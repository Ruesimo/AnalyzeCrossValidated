package ruesimo.com.analyze_cross_validated;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class GetMedianOfVotes {

	public static void main(String[] args) throws FileNotFoundException,
			UnsupportedEncodingException {

		// can be "questions", "commentquestions", "answers", "commentanswers"
		String view = "commentanswers";

		String database = args[0];
		String password = args[1];

		Analyzer analyzer = new Analyzer();

		Set<String> tags = analyzer.getTags(database, password);
		Set<String> tagMedianStrings = new HashSet<String>();
		int counter = 0;
		for (String tag : tags) {
			
			tagMedianStrings.add(analyzer.getMedianOfVotesFromTag(database, password, view, tag));
			System.out.println(++counter+"/"+tags.size());
		}
		PrintWriter writer = new PrintWriter(
				"results\\4 tags_median_votes_" + view + ".sql", "UTF-8");

		writer.println("drop table if exists `tags_median_votes_" + view
				+ "`;");
		writer.println("create table if not exists `tags_median_votes_"
				+ view
				+ "` (tag varchar(255), median_votes double, primary key(tag));");

		for (String tagMedianString : tagMedianStrings) {
			writer.println("insert into `tags_median_votes_" + view
					+ "` (`tag`,`median_votes`) values ("
					+ tagMedianString + ");");
		}
		writer.close();
		
		Set<String> subjects = analyzer.getSubjects(database, password);// there are 11881 distinct subjects select * from subjects_processed_single_words_max_5_words where subject_processed = 'Veveo Inc';
		Set<String> subjectMedianStrings = new HashSet<String>();
		counter = 0;
		for(String subject : subjects) {
			subjectMedianStrings.add(analyzer.getMedianOfVotesFromSubject(database, password, view, subject));
			System.out.println(++counter+"/"+subjects.size());
			
		}
		
		writer = new PrintWriter(
				"results\\5 subjects_median_votes_" + view + ".sql", "UTF-8");

		writer.println("drop table if exists `subjects_median_votes_" + view
				+ "`;");
		writer.println("create table if not exists `subjects_median_votes_"
				+ view
				+ "` (subject varchar(255), median_votes double, primary key(subject));");

		for (String subjectMedianString : subjectMedianStrings) {
			writer.println("insert into `subjects_median_votes_" + view
					+ "` (`subject`,`median_votes`) values ("
					+ subjectMedianString + ");");
		}
		writer.close();

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		System.out.println("End: ("+view+") " + sdf.format(date));
	}
}
