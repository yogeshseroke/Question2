<%@ page import="java.io.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="" methods="post">
<center>
<div >
<h1>RESUME</h1>
<input type="text" name="txt1" placeholder="Enter your name" />
<br>
<br>
<input type="text" name="txt2" placeholder="E-mail_id" />
<br>
<br>
<input type="text" name="txt3" placeholder="Mobile number" />
<br>
<br>
<input type="text" name="txt4" placeholder="Address" />
<br>
<br>
<input type="radio" name="txt5" value="M"> Male
<br>
<br>
<input type="radio" name="txt5" value="F"> Female
<br>
<br>
<input type="radio" name="txt5" value="O"> Others
<br>
<br>
<h2>Enter your Skills here:-</h2>
<br>
<br>
<textarea rows="1" cols="17" name="txt8" value="txtarea"></textarea>
<br>
<br>
<input type="text" name="txt9" value="pg" placeholder="Enter your PG %" />
<br>
<br>
<input type="text" name="txt10" value="ug" placeholder="Enter your G %" />
<br>
<br>
<input type="text" name="txt11" value="12" placeholder="Enter your 12th %" />
<br>
<br>
<input type="text" name="txt12" value="10" placeholder="Enter your 10th %" />
<br>
<br>
<input type="submit" name="finish" value="finish">
</div>
</center>
</form>

<%
String s1="";


 s1=s1+request.getParameter("txt1")+"\n";

s1=s1+request.getParameter("txt2")+"\n";

s1=s1+" "+request.getParameter("txt3")+"\n";

s1=s1+" "+request.getParameter("txt4")+"\n";

s1=s1+" "+request.getParameter("txt5")+"\n";

s1=s1+" "+request.getParameter("txt5")+"\n";

s1=s1+" "+request.getParameter("txt5")+"\n";

s1=s1+" "+request.getParameter("txt8")+"\n";

s1=s1+" "+request.getParameter("txt9")+"\n";

s1=s1+" "+request.getParameter("txt10")+"\n";

s1=s1+" "+request.getParameter("txt11")+"\n";

s1=s1+request.getParameter("txt12")+"\n";
out.write(s1+"\n");




	File f=new File("C://yogeshserokePractice//resume.txt");
	FileWriter fw=new FileWriter(f);
	BufferedWriter bw=new BufferedWriter(fw);
	bw.write(s1+"\n");
	bw.close();
	fw.close();

%>
</body>
</html>