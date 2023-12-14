<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> Signup Form </title>
    <link rel="stylesheet" href="CSS/style.css" />
  </head>
  <body>
    <section class="wrapper">
      <div class="form signup">
        <header>Signup</header>
<form action="process.jsp" method="post">
          <input id="name" type="text" placeholder="Full name" />
          <input id="email" type="email" placeholder="Email address"/>
          <input id="age" type="number" placeholder="Age"/>
          <input id="dob" type="date"/>
          <input type="submit" value="Signup" onclick="validate()" />
        </form>
      </div>
    </section>
    
    
<script type="text/javascript">
   function validate()
   {
    let userName =  document.getElementById("name").value;
    let userEmail =  document.getElementById("email").value;
    let userAge =   document.getElementById("age").value;
    let userDob =   document.getElementById("dob").value;

    if(userName == "")
    {
        alert("Please Enter Full Name!");
        return false;
    }
    if(userEmail == "")
    {
        alert("Please Enter Email!");
        return false;
    }
    if(userAge == "" || userAge <= 0)
    {
        alert("Age should be a positive number");
        return false;
    }
    if(userDob == "")
    {
        alert("Please Enter Date of Birth");
        return false;
    }
    else{
       return true;
     }
   }
</script>
    
  </body>
</html>