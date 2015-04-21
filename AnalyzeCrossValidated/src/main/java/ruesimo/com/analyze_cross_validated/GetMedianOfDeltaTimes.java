package ruesimo.com.analyze_cross_validated;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class GetMedianOfDeltaTimes {
	
	public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException {
		
		String database = args[0];
		String password = args[1];
		
		Analyzer analyzer = new Analyzer();

		Set<String> tags = analyzer.getTags(database, password);
		Set<String> tagMedianStrings = new HashSet<String>();
		int counter = 0;
		for(String tag : tags) {
			
			tagMedianStrings.add(analyzer.getMedianOfDeltaTimeFromTag(database, password, tag));
			System.out.println(++counter+"/"+tags.size());
		}
		PrintWriter writer = new PrintWriter(
				"results\\4 tags_median_delta_times.sql", "UTF-8");

		writer.println("drop table if exists tags_median_delta_times;");
		writer.println("create table if not exists tags_median_delta_times (tag varchar(255), median_delta_times double, primary key(tag));");

		for (String tagMedianString : tagMedianStrings) {
			writer.println("insert into tags_median_delta_times (`tag`,`median_delta_times`) values ("
					+ tagMedianString + ");");
		}
		writer.close();
		
		Set<String> subjects = analyzer.getSubjects(database, password);
		Set<String> subjectMedianStrings = new HashSet<String>();
		counter = 0;
		for(String subject : subjects) {
			
			subjectMedianStrings.add(analyzer.getMedianOfDeltaTimeFromSubject(database, password, subject));
			System.out.println(++counter+"/"+subjects.size());
		}
		PrintWriter writer2 = new PrintWriter(
				"results\\5 subjects_median_delta_times.sql", "UTF-8");

		writer2.println("drop table if exists subjects_median_delta_times;");
		writer2.println("create table if not exists subjects_median_delta_times (subject varchar(255), median_delta_times double, primary key(subject));");

		for (String subjectMedianString : subjectMedianStrings) {
			writer2.println("insert into subjects_median_delta_times (`subject`,`median_delta_times`) values ("
					+ subjectMedianString + ");");
		}
		writer2.close();

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		System.out.println("End: " + sdf.format(date));
	}

}
