package SattvaQ;

import java.io.*;
import java.util.*;

public class filereader
{


public static void main(String args[]) throws Exception
   {
           String gj="hi";
 String x="c:\\"+gj+".txt";
       int i=getLines(x,"file");
       System.out.println(i);
       
   int tokencount;
     
   FileReader fr=new FileReader(x);
   BufferedReader br=new BufferedReader(fr);
   String s;
   int linecount=0;
   String line;
int cc=0;
			   while ((s=br.readLine())!=null)
				  {
				  linecount++;
				  int indexfound=s.indexOf("file");
							  if (indexfound>-1)
							  {
							//  System.out.println("\n");
							//  System.out.println("Word was found at position::" +indexfound+ "::on line"+linecount);
							//  System.out.println("\n");
							  line=s;
							  System.out.println(line);
							cc=cc+1;
							  }

				  }
                           System.out.println(cc);
   fr.close();
   }



public static int getLines(String filename, String linefromdb) throws Exception 
{
    int getlin=0;
     int tokencount;
         String gj="hi";
 String x="c:\\"+gj+".txt";
   FileReader fr=new FileReader(x);
   BufferedReader br=new BufferedReader(fr);
   String s;
   int linecount=0;
   String line;

			   while ((s=br.readLine())!=null)
				  {
				  linecount++;
				  int indexfound=s.indexOf(linefromdb);
							  if (indexfound>-1)
							  {
							//  System.out.println("\n");
							//  System.out.println("Word was found at position::" +indexfound+ "::on line"+linecount);
							//  System.out.println("\n");
							  line=s;
							 // System.out.println(line);
							getlin= getlin+1;
							  }

				  }
   
    
    

    return getlin;



}

}