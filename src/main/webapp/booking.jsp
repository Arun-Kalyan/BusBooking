<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <title>Bus Ticket Booking</title>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
  <link type="text/css" rel="stylesheet" href="css/style.css" />

<style>

body{
background-image : url('background.jpg');
}


</style>

<script>
function validate (elem){
	console.log(elem.value);
	var source = document.getElementById('source').value;
	var destination = document.getElementById('destination').value;
	if(source === destination){
		alert("Source and Destination cannot be same!");
	}

}

function check ()
{
	var source = document.getElementById('source').value;
	var destination = document.getElementById('destination').value;
	if(source === "Source" || destination === "Destination"){
		alert("Please Select Source/Destination!");
		return false;
	}
	
	return true;
	
}

</script>


</head>




<body>
  <div id="booking" class="section">
    <div class="section-center">
      <div class="container">
        <div class="row">
          <div class="booking-form">
          <form name= "book" method="post"  onsubmit = "return check();" action="BookingServlet">
            <div class="form-header">
              <h1>Book a Bus!</h1>
            </div>
            <form>
              <div class="row">
                <div class="col-sm-12">
                  <div class="form-group">
                    <span class="form-label">Name</span>
                    <input class="form-control" type="text" name = "name" required placeholder="Enter your name">
                  </div>
                </div>
              </div>
              
             <div class="form-group">
          <b><span class="form-label">Source</span></b>
            <select name="source"
              class="form-control" id="source" onchange = "validate(this);">
             <option value="Source">Select Source</option> 
             <option value="Tambaram East">TAMBARAM EAST</option>
              <option value="Camp Road">CAMP ROAD</option>
              <option value="Medavakkam Junction">MEDAVAKKAM JUNCTION</option>
              <option value="Pallavan Nagar">PALLAVAN NAGAR</option>
              <option value="Perumbakkam">PERUMBAKKAM</option>
              <option value="Sholinganallur">SHOLINGANALLUR</option>
              <option value="Karapakkam">KARAPAKKAM</option>
              <option value="Srp tools">SRP TOOLS</option>
              <option value="Thiruvanmiyur">THIRUVANMIYUR</option>
              
              
            </select>
          </div>
          
             
             <div class="form-group">
          <b><span class="form-label">Destination</span></b>
            <select name="destination"
              class="form-control" id="destination" onchange = "validate(this);">
              <option value="Destination">Select Destination</option>
              
              <option value="Tambaram East">TAMBARAM EAST</option>
              <option value="Camp Road">CAMP ROAD</option>
              <option value="Medavakkam Junction">MEDAVAKKAM JUNCTION</option>
              <option value="Pallavan Nagar">PALLAVAN NAGAR</option>
              <option value="Perumbakkam">PERUMBAKKAM</option>
              <option value="Sholinganallur">SHOLINGANALLUR</option>
              <option value="Karapakkam">KARAPAKKAM</option>
              <option value="Srp tools">SRP TOOLS</option>
              <option value="Thiruvanmiyur">THIRUVANMIYUR</option>
              
            </select>
          </div>
          
              <div class="row">                
              <div class="col-sm-12">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <span class="form-label">Adults</span>
                        <select class="form-control" name = "adults">
                         <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                        </select>
                        <span class="select-arrow"></span>
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <span class="form-label">Children</span>
                        <select class="form-control" name = "kids">
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                       </select>
                        <span class="select-arrow"></span>
                      </div>
                    </div>
                    </div>
                 
              <div class="form-group">
          <b><span class="form-label">Bus Type:</span></b>
            <select name="type"
              class="form-control" id="type" ">
              <option value="Ordinary">Ordinary</option>  
              <option value="Deluxe">Deluxe</option>
              <option value="AC">A/C</option>
            
            </select>
          </div>
          
              <div class="form-btn">
                <button class="submit-btn" >Book</button>
              </div>
              <br>
              <div class="form-btn">
                <button class="submit-btn" type = "reset">Clear</button>
              </div>
              
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>