<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Product Details</title>
<style>
body,html{
background-image:url("1.jpg");background-repeat:no-repeat;background-position:center; background-size: 1050px 1050px;}
#header{
height:15%;width:100%;font-family:arial;text-align:center;color:white;
}
#rightdiv{
height:85;width:60%;font-family:garamond;color:white;float:right;text-align:left;
}

input[type=text], select {
  width: 100%;
  background-color: white;
  padding: 5px 5px;
  margin: 4px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-sizing: border-box;
}

input[type=number], select {
  width: 100%;
  background-color: white;
  padding: 5px 5px;
  margin: 4px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-sizing: border-box;
}

input[type=password], select {
  width:100%;
  background-color: white;
  padding: 5px 5px;
  margin: 4px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: white;
  color: white;
  padding: 5px 5px;
  margin: 4px 0;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}

input[type=submit]{
  background-color: aqua;
}

</style>
</head>
<body>
<div id="header"><h2> New Service </h2></div>
<div id="rightdiv">
  <form method="post" action="servicefieldscontroller">
  <table style="text-align:center">
  
  <tr>
    <td><label for="serviceid"><h3>Service Id</h3></label></td>
    <td><input type="number" id="SERVICE_ID" name="SERVICE_ID" placeholder="Your service id.." required/></td>
</tr>

<tr>
    <td><label for="servicename"><h3>Service Name</h3></label></td>
    <td><input type="text" id="SERVICE_NAME" name="SERVICE_NAME" placeholder="Your Service name.." required/></td>
    </tr>
    <tr>
     <td><label for="price"><h3>Price Rs.</h3></label></td>
    <td><input type="number" id="PRICE" name="PRICE" placeholder="Service price.." required/></td>
</tr>
<tr>
    <td><label for="servicedescription"><h3>Service Description</h3></label></td>
    <td><textarea name="DESCRIPTION" rows="4" cols="50"></textarea></td>
    </tr>
<tr>
    <td><label for="vendor id"><h3>Vendor Id</h3></label></td>
    <td><input type="number" id="VENDOR_ID" name="VENDOR_ID" placeholder="Your User Id.." ></td>
    </tr>
  <tr>
    <td><a href="service created.jsp"><input type="submit" value="Submit" name="submit" id="submit"/></a></td>
    </tr>

    </table>
  </form>
</div>


</body>
</html>
    