package SattvaQ;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
 
public class WriteToFile {
	public static void main(String[] args) {
		try {
 
			String content = "This is the content to write into file";
                        String gj="hi";
 String x="c:\\"+gj+".txt";
			File file = new File(x);
 
			// if file doesnt exists, then create it
			if (!file.exists()) {
				file.createNewFile();
			}
 
			FileWriter fw = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(content);
			bw.close();
 
			System.out.println("Done");
 
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
        
        
        public static String createFileTemp(String filename, String filecontent) throws Exception
        {
        
			String content = filecontent;//"This is the content to write into file";
                        String gj="hi";
 String x="c:\\"+gj+".txt";
			File file = new File(filename);
 
			// if file doesnt exists, then create it
			if (!file.exists()) {
				file.createNewFile();
			}
 
			FileWriter fw = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(content);
			bw.close();
 
			System.out.println("Done");
                        return "Done";
        
        }
}