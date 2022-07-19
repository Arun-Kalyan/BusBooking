<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.*"%>
 <%@page import = "java.text.SimpleDateFormat"%>  
 <%@page import = "com.arun.busbooking.model.Ticket"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link type="text/css" rel="stylesheet" href="css/display.css" />

<title>Ticket Booked!</title>
</head>
<body>

<% 

    Ticket ticket = Ticket.class.cast(request.getAttribute("ticket"));
    String name = ticket.getName();
    String source = ticket.getSource();
    String destination = ticket.getDestination();
    String shortSource = ticket.getShortSource();
    String shortDestination = ticket.getShortDestination();
    int adults = ticket.getAdults();
    int kids = ticket.getKids();
    int fare = ticket.getFare();
    int time = ticket.getTime();
    String bustype = ticket.getBusType();
    bustype = (bustype.substring(0,1).toUpperCase() + (bustype.substring(1, bustype.length()).toLowerCase()));
    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
    Date date = new Date();  
    System.out.println(formatter.format(date));
    String originalDate = formatter.format(date);
    String temp = originalDate.split(" ")[0];
    String originalTime = originalDate.split(" ")[1];
    int hours = Integer.parseInt(originalTime.split(":")[0]);
    int minutes = Integer.parseInt(originalTime.split(":")[1]);
    int seconds = Integer.parseInt(originalTime.split(":")[2]);
    seconds+=21;
    System.out.println("hours is:"+hours+" and minutes is:"+minutes);
    minutes+=time;
    if(minutes >= 60 ){
      hours += minutes/60;
      minutes = minutes % 60;
    }
    
    if(seconds >=60){
     minutes = seconds/60;
     seconds = minutes%60;
    }
   
    String result =String.format("%02d",hours)+":"+String.format("%02d",minutes)+":"+String.format("%02d",seconds);

    
%>
<div class="container">

  <div class="ticket basic">
    <p>Admit One</p>
  </div>

  <div class="ticket airline">
    <div class="top">
      <h1>WELCOME TO MTC!</h1>
      <div class="big">
        <p class="from"><%=shortSource%></p>
        <p class="to"><i class="fas fa-arrow-right"></i><%=shortDestination%></p>
      </div>
      <div class="top--side">
        <i class="fas fa-bus"></i>
        <p><%=source%></p>
        <p><%=destination%></p>
      </div>
    </div>
    <div class="bottom">
      <div class="column">
        <div class="row row-1">
          <p><span>Bus no</span>95</p>
          <p><span>Date</span><%=temp%></p>
          <p><span>Type</span><%=bustype%></p>
          
         
        </div>
        <div class="row row-2">
          <p><span>Total Fare</span><%=fare%></p>
          <p class="row--center"><span>Departs</span><%=originalTime%></p>
          <p class="row--right"><span>Arrives</span><%=result%></p>
        </div>
        <div class="row row-3">
          <p><span>Passenger</span><%=name%></p>
          <p class="row--center"><span>Adults</span><%=adults%></p>
          <p class="row--right"><span>Kids</span><%=kids%></p>
        </div>
      </div>
      <div class="bar--code"></div>
        <center><h5>HAPPY JOURNEY!</h5></center>
    </div>
  
  </div>

</div>


</body>
</html>