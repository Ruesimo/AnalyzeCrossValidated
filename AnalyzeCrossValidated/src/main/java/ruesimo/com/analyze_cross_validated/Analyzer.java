package ruesimo.com.analyze_cross_validated;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

public class Analyzer {

	public Set<String> getTags(String database, String password) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		Set<String> tags = new HashSet<String>();

		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/"
					+ database, "root", password);
			statement = connection.createStatement();

			resultSet = statement.executeQuery("select tag from tags;");

			while (resultSet.next()) {
				tags.add(resultSet.getString("tag"));
			}

			connection.close();
		} catch (Exception e) {
			System.out.println("getTags() " + e);
		}
		return tags;
	}

	public Set<String> getSubjects(String database, String password) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		Set<String> subjects = new HashSet<String>();

		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/"
					+ database, "root", password);
			statement = connection.createStatement();

			resultSet = statement
					.executeQuery("select subject_processed from subjects_processed_single_words_max_5_words;");

			while (resultSet.next()) {
				subjects.add(resultSet.getString("subject_processed"));
			}

			connection.close();
		} catch (Exception e) {
			System.out.println("getCountedSubjects() " + e);
		}
		return subjects;
	}

	private Set<Integer> getThreadIDsFromTag(String database, String password,
			String tag) {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		Set<Integer> threadIDs = new HashSet<Integer>();

		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/"
					+ database, "root", password);
			statement = connection.createStatement();

			resultSet = statement.executeQuery("select id from threads "
					+ "where tags like concat('%', ' " + tag + " ', '%');");

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				threadIDs.add(id);
			}

			connection.close();
		} catch (Exception e) {
			System.out.println("getThreadIDsFromTag() " + e);
		}
		return threadIDs;
	}

	public Set<String> getSubjectsCountFromTag(String database,
			String password, String view, String tag) {

		Set<Integer> threadIDs = getThreadIDsFromTag(database, password, tag);

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		Set<String> results = new HashSet<String>();

		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/"
					+ database, "root", password);
			statement = connection.createStatement();

			String query = "select s.subject, count(x.id) count from " + view
					+ " x join subjects_processed_single_words_max_5_words s ";

			query += "on (";

			for (int threadID : threadIDs) {
				query += "x.thread_id = " + threadID + " or ";
			}
			query = query.substring(0, query.length() - 4);
			query += ") and("

			+ "x.text_blob like concat('% ', s.subject, '%')"/* or "

			+ "x.text_blob like concat('% ', s.subject_processed, '%') or "

			+ "(x.text_blob like concat('%', s.`1_part`, '%') and "
					+ "x.text_blob like concat('%', s.`2_part`, '%') and "
					+ "x.text_blob like concat('%', s.`3_part`, '%') and "
					+ "x.text_blob like concat('%', s.`4_part`, '%') and "
					+ "x.text_blob like concat('%', s.`5_part`, '%')" + ")"
					+ */+") " + "group by s.subject;";

			resultSet = statement.executeQuery(query);

			while (resultSet.next()) {
				String subject = resultSet.getString("subject");
				subject = subject.replace("'", "\\'");
				int count = resultSet.getInt("count");
				results.add("'" + tag + "', '" + subject + "', " + count);
			}

			connection.close();
		} catch (Exception e) {
			System.out.println("getSubjectsCountFromTag() " + e);
		}
		return results;
	}

	public String getMedianOfVotesFromTag(String database, String password,
			String view, String tag) {

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String result = "";

		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/"
					+ database, "root", password);
			statement = connection.createStatement();

			String query = "SELECT avg(t1.votes) as median_votes " + "FROM ( "
					+ "SELECT @rownum:=@rownum+1 as row_number, x.votes "
					+ "FROM "
					+ view
					+ "_ordered x join tags_per_thread tt join (SELECT @rownum:=0) r "
					+ "on x.thread_id = tt.id and "
					+ "('"
					+ tag
					+ "' = tt.tag1 or '"
					+ tag
					+ "'= tt.tag2 or '"
					+ tag
					+ "'= tt.tag3 or '"
					+ tag
					+ "'= tt.tag4 or '"
					+ tag
					+ "'= tt.tag5) "
					+ "order by x.votes "
					+ ") as t1, "
					+ "( "
					+ "SELECT count(*) as total_rows "
					+ "FROM "
					+ view
					+ "_ordered x join tags_per_thread tt "
					+ "on x.thread_id = tt.id and "
					+ "('"
					+ tag
					+ "' = tt.tag1 or '"
					+ tag
					+ "'= tt.tag2 or '"
					+ tag
					+ "'= tt.tag3 or '"
					+ tag
					+ "'= tt.tag4 or '"
					+ tag
					+ "'= tt.tag5) "
					+ ") as t2 "
					+ "WHERE t1.row_number in ( floor((total_rows+1)/2), floor((total_rows+2)/2) );";
			resultSet = statement.executeQuery(query);

			while (resultSet.next()) {
				Double median = resultSet.getDouble("median_votes");
				if (median.isNaN()) {
					median = 0.0;
				}

				result = "'" + tag + "', '" + median + "'";
			}

			connection.close();
		} catch (Exception e) {
			System.out.println("getMediansFromTag() " + e);
		}
		return result;
	}

	public String getMedianOfDeltaTimeFromTag(String database, String password,
			String tag) {

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String result = "";

		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/"
					+ database, "root", password);
			statement = connection.createStatement();

			String query = "SELECT avg(t1.delta_time) as median_delta_times FROM ("
					+ "SELECT @rownum:=@rownum+1 as `row_number`, d.delta_time "
					+ "FROM delta_time_per_tag_and_question_ordered d join (SELECT @rownum:=0) r "
					+ "on tag = '"
					+ tag
					+ "' "
					+ "ORDER BY d.delta_time "
					+ ") as t1, "
					+ "("
					+ "SELECT count(*) as total_rows "
					+ "FROM delta_time_per_tag_and_question_ordered d "
					+ "WHERE tag = '"
					+ tag
					+ "' "
					+ ") as t2 "
					+ "WHERE 1 "
					+ "AND t1.row_number in ( floor((total_rows+1)/2), floor((total_rows+2)/2) );";
			resultSet = statement.executeQuery(query);

			while (resultSet.next()) {
				Double median = resultSet.getDouble("median_delta_times");
				if (median.isNaN()) {
					median = 0.0;
				}

				result = "'" + tag + "', '" + median + "'";
			}

			connection.close();
		} catch (Exception e) {
			System.out.println("getMedianOfDeltaTimeFromTag() " + e);
		}
		return result;
	}

	public String getMedianOfVotesFromSubject(String database, String password,
			String view, String subject) {

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String result = "";

		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/"
					+ database, "root", password);
			statement = connection.createStatement();

			String query = "SELECT avg(t1.votes) as median_votes "
					+ "FROM ( "
					+ "SELECT @rownum:=@rownum+1 as row_number, x.votes "
					+ "FROM subjects_processed_single_words_max_5_words s join "
					+ view
					+ "_ordered x "
					+ "on s.subject = '"
					+ subject
					+ "' "

					+ "and ( "

					+ "x.text_blob like concat('%', s.subject, '%')"/* or "

					+ "x.text_blob like concat('%', s.subject_processed, '%') or "

					+ "(x.text_blob like concat('%', s.`1_part`, '%') and "
					+ "x.text_blob like concat('%', s.`2_part`, '%') and "
					+ "x.text_blob like concat('%', s.`3_part`, '%') and "
					+ "x.text_blob like concat('%', s.`4_part`, '%') and "
					+ "x.text_blob like concat('%', s.`5_part`, '%') "
					+ ") "*/
					+ ") "
					+ "order by x.votes "
					+ ") as t1, "
					+ "( "
					+ "SELECT count(*) as total_rows "
					+ "FROM subjects_processed_single_words_max_5_words s join "
					+ view
					+ "_ordered x "
					+ "on s.subject = '"
					+ subject
					+ "' "

					+ "and ( "

					+ "x.text_blob like concat('%', s.subject, '%') "/*or "

					+ "x.text_blob like concat('%', s.subject_processed, '%') or "

					+ "(x.text_blob like concat('%', s.`1_part`, '%') and "
					+ "x.text_blob like concat('%', s.`2_part`, '%') and "
					+ "x.text_blob like concat('%', s.`3_part`, '%') and "
					+ "x.text_blob like concat('%', s.`4_part`, '%') and "
					+ "x.text_blob like concat('%', s.`5_part`, '%') "
					+ ") "*/
					+ ") "
					+ ") as t2 "
					+ "WHERE t1.row_number in ( floor((total_rows+1)/2), floor((total_rows+2)/2) );";
			resultSet = statement.executeQuery(query);

			while (resultSet.next()) {
				Double median = resultSet.getDouble("median_votes");
				if (median.isNaN()) {
					median = 0.0;
				}

				result = "'" + subject + "', '" + median + "'";
			}

			connection.close();
		} catch (Exception e) {
			System.out.println("getMedianOfVotesFromSubject() " + e);
		}
		return result;
	}

	public String getMedianOfDeltaTimeFromSubject(String database,
			String password, String subject) {

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		String result = "";

		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost/"
					+ database, "root", password);
			statement = connection.createStatement();

			String query = "SELECT avg(t1.delta_time) as median_delta_times "
					+ "FROM ( "
					+ "SELECT @rownum:=@rownum+1 as `row_number`, d.delta_time  "
					+ "FROM delta_time_per_subject_and_question_ordered d, (SELECT @rownum:=0) r "
					+ "WHERE subject_processed = '"
					+ subject
					+ "' "
					+ "ORDER BY d.delta_time "
					+ ") as t1, "
					+ "( "
					+ "SELECT count(*) as total_rows "
					+ "FROM delta_time_per_subject_and_question_ordered d "
					+ "WHERE subject_processed = '"
					+ subject
					+ "' "
					+ ") as t2 "
					+ "WHERE 1 "
					+ "AND t1.row_number in ( floor((total_rows+1)/2), floor((total_rows+2)/2) );";
			resultSet = statement.executeQuery(query);

			while (resultSet.next()) {
				Double median = resultSet.getDouble("median_delta_times");
				if (median.isNaN()) {
					median = 0.0;
				}

				result = "'" + subject + "', '" + median + "'";
			}

			connection.close();
		} catch (Exception e) {
			System.out.println("getMedianOfDeltaTimeFromSubject() " + e);
		}
		return result;
	}
}
