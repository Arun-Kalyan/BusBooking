package com.arun.busbooking.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.arun.busbooking.model.Ticket;

/**
 * Servlet implementation class BookingServlet
 */
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
//	Ticket ticket;
//	
       
   
    public BookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String name = request.getParameter("name");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		int adults = Integer.parseInt(request.getParameter("adults"));
		//int children = Integer.parseInt(request.getParameter("kids"));
		String bustype = request.getParameter("type");
		bustype = bustype.toLowerCase();
		
		System.out.println("Source is:"+source+" and destination is:"+destination+" and selected type is:"+bustype);
		
		String places[] = {"Tambaram East", "Camp Road","Medavakkam Junction", "Pallavan Nagar", "Perumbakkam", "Sholinganallur","Karapakkam", "SRP tools","Thiruvanmiyur"};
		String shortForms[] = {"TBM", "CMR", "MVJ", "PVN", "PBM", "SLR", "KPM", "SRP", "TVR"};
		
		String shortSource = "", shortDestination = "";
		
		int kms[] = {0, 3, 7, 10, 12, 15, 18, 23, 25};
		int ordinary [] = {0, 6, 8, 10, 15, 18, 20, 22,25};
		int deluxe [] = {0, 8, 12, 14, 20, 25, 30, 32,36};
		int ac [] = {0, 12, 20, 25, 30, 35, 40, 45,50};
		int time[] = {0, 8, 25, 31, 35, 45,50, 66, 70};
		int prices[] = new int[kms.length];
		
		if(bustype.equals("ordinary")) {
			for(int i=0; i<ordinary.length; i++) {
				prices[i] = ordinary[i];
			}
		}
		
		else if(bustype.equals("deluxe")) {
			for(int i=0; i<deluxe.length; i++) {
				prices[i] = deluxe[i];
			}
		}
		
		else if(bustype.equals("ac")) {
			for(int i=0; i<ac.length; i++) {
				prices[i] = ac[i];
			}
		}
		
		System.out.println("Price Array: "+Arrays.toString(prices));
	
		source = source.toLowerCase();
		destination = destination.toLowerCase();
		
		int sourceIndex=0, destinationIndex=0;
		
		for(int i=0; i<kms.length; i++) {
			if(places[i].equalsIgnoreCase(source)) sourceIndex = i;
			if(places[i].equalsIgnoreCase(destination)) destinationIndex = i;
		}
		
		
		for(int i=0; i<kms.length; i++) {
			if(places[i].equalsIgnoreCase(source)) shortSource = shortForms[i];
			if(places[i].equalsIgnoreCase(destination)) shortDestination = shortForms[i];
		}
		
		System.out.println("Source Index is:"+sourceIndex+ "and Destination Index is: "+destinationIndex);
		int price1 = 0, price2=0;
		
		
		 price1+=prices[sourceIndex]; 
		 price2+=prices[destinationIndex]; 
		 int fare = Math.abs(price1 - price2);
		 
		
		
		if(fare <=5 && bustype.equals("ordinary")) fare = 6;
		else if(fare <=5 && bustype.equals("deluxe")) fare = 8;
		else if(fare <=5 && bustype.equals("ac")) fare = 12;
		
		int totalfare = (fare * adults );
		int duration = time[destinationIndex] - time[sourceIndex];
		
		System.out.println("Price1: "+price1+" and Price2 is: "+price2+ "and fare is: "+ fare);
		System.out.println("No of Adults: "+adults);
		//System.out.println("No of Children: "+children);
		System.out.println("Total: "+totalfare);
		System.out.println("Time taken: "+duration);
		
		Ticket ticket = new Ticket(name, places[sourceIndex], places[destinationIndex],adults, fare,duration, shortSource, shortDestination,totalfare, bustype);

		request.setAttribute("ticket", ticket);
		RequestDispatcher view = request.getRequestDispatcher("printticket.jsp");
		view.forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
