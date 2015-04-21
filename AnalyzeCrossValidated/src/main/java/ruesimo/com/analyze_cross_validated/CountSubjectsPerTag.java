package ruesimo.com.analyze_cross_validated;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class CountSubjectsPerTag {

	public static void main(String[] args) throws FileNotFoundException,
			UnsupportedEncodingException {

		// can be "questions", "commentquestions", "answers", "commentanswers"
		String view = "commentanswers";

		String database = args[0];
		String password = args[1];

		Analyzer analyzer = new Analyzer();

		Set<String> tags = analyzer.getTags(database, password);

		Set<String> tagsSubjectsCounts = new HashSet<String>();

		int counter = 0;

		for (String tag : tags) {
			if (!tag.equals("")) {

				System.out.print(tag);

				tagsSubjectsCounts.addAll(analyzer.getSubjectsCountFromTag(
						database, password, view, tag));

				System.out.println("\t(" + (++counter) + "/" + tags.size()
						+ ")");
			}
		}
		PrintWriter writer = new PrintWriter(
				"results\\3 counted_subjects_per_tag_" + view + ".sql", "UTF-8");

		writer.println("drop table if exists `counted_subjects_per_tag_" + view
				+ "`;");
		writer.println("create table if not exists `counted_subjects_per_tag_"
				+ view
				+ "` (tag varchar(255), subject varchar(255), count int, primary key(tag, subject));");

		for (String tagsSubjectsCount : tagsSubjectsCounts) {
			writer.println("insert into `counted_subjects_per_tag_" + view
					+ "` (`tag`,`subject`,`count`) values ("
					+ tagsSubjectsCount + ");");
		}
		writer.close();

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		System.out.println("End: " + sdf.format(date));
	}
}
