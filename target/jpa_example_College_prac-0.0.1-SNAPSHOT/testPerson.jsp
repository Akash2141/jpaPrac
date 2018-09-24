<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.spi.PersistenceProvider"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="jpa_example_College_prac.person"%>
<%-- <%@page import="org.hibernate.jpa.HibernatePersistenceProvider" %> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		EntityManager em = Persistence.createEntityManagerFactory("personDetails").createEntityManager();
		em.getTransaction().begin();
		person person = new person("John", 13);
		em.persist(person);
		em.getTransaction().commit();
		em.close();
	%>
	successfully inserted
</body>
</html>