<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="./Scripts/formregister.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> form</title>
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

<div id="header"><h2> Registration Form </h2></div>
<div id="rightdiv">
  <form method="post" action="RegistrationController" onsubmit="return validate(this);">
  <table style="text-align:center">
  
  <tr>
    <td><label for="firstname"><h3>First Name</h3></label></td>
    <td><input type="text" id="FIRST_NAME" name="FIRST_NAME" placeholder="Your first name.." /></td>
</tr>
<tr>
    <td><label for="lastname"><h3>Last Name</h3></label></td>
    <td><input type="text" id="LAST_NAME" name="LAST_NAME" placeholder="Your last name.." /></td>
    </tr>
    <tr>
     <td><label for="age"><h3>Age</h3></label></td>
    <td><input type="number" id="AGE" name="AGE" placeholder="Your age.." /></td>
</tr>
<tr>
    <td><label for="gender"><h3>Gender</h3></label></td>
   <td> <input type="radio" name="GENDER" value="male" > Male<br>
  <input type="radio" name="GENDER" value="female"> Female<br>
  <input type="radio" name="GENDER" value="other"> Other</td>
    </tr>
    <tr>
     <td><label for="contactnumber"><h3>Contact</h3></label></td>
   <td><input type="number" id="CONTACT_NUMBER" name="CONTACT_NUMBER" placeholder="Your contact number.." /></td>
    </tr>
    <tr>
    <td><label for="username"><h3>User Id</h3></label></td>
    <td><input type="text" id="USER_ID" name="USER_ID" placeholder="Your User Id.." /></td>
    </tr>
    <tr>
    <td><label for="password"><h3>Password</h3></label></td>
    <td><input type="password" id="PASSWORD" name="PASSWORD" placeholder="Your Password.." ></td>
  </tr>
  <tr>
    <td><label for="repeatpassword"><h3>Repeat Password</h3></label></td>
    <td><input type="password" id="REPEAT_PASSWORD" name="REPEAT_PASSWORD" placeholder="Confirm Your Password.." ></td>
  </tr>
    <tr>
  <td><label for="ROLE"><h3>Role</h3></label></td>
  <td> <select id="ROLE" name="ROLE">
      <option value="1"> </option>
      <option value="User">User</option>
      <option value="Vendor">Vendor</option>
    </select></td>
    </tr>
    <tr>
    <td><a href="success.jsp"><input type="submit" value="Submit" name="submit" id="submit"/></a></td>
    </tr>
    <td><input type="submit" value="Logout" name="logout" id="logout"/></td></tr>
    </table>
  </form>
  </div>


</body>
</html>