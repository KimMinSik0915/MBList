<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String EI = request.getParameter("EI");

if(Integer.parseInt(EI) > 2) {
	
	EI = "E";
	
} else {
	
	EI = "I";
	
}

String SN = request.getParameter("SN");

if(Integer.parseInt(SN) > 2) {
	
	SN = "S";
	
} else {
	
	SN = "N";
	
}

String TF = request.getParameter("TF");

if(Integer.parseInt(TF) > 2) {
	
	TF = "T";
	
} else {
	
	TF = "F";
	
}

String JP = request.getParameter("JP");

if(Integer.parseInt(JP) > 2) {
	
	JP = "J";
	
} else {
	
	JP = "p";
	
}

System.out.println(EI+SN+TF+JP);

%>