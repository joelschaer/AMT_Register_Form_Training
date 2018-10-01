<%--
  Created by IntelliJ IDEA.
  Author: joel schar
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Register Form</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <base href="${pageContext.request.requestURL.substring(0, pageContext.request.requestURL.length() - pageContext.request.requestURI.length())}${pageContext.request.contextPath}/" />

  <!--===============================================================================================-->
  <link rel="icon" type="image/png" href="static/images/icons/favicon.ico"/>
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="static/vendor/bootstrap/css/bootstrap.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="static/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="static/vendor/animate/animate.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="static/vendor/css-hamburgers/hamburgers.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="static/vendor/select2/select2.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="static/css/util.css">
  <link rel="stylesheet" type="text/css" href="static/css/main.css">
  <!--===============================================================================================-->
</head>
<body>

<div class="bg-contact3" style="background-image: url('/static/images/bg-02.jpg');">
  <div class="container-contact3">
    <div class="wrap-contact3">
      <form class="contact3-form validate-form" name="register-form" method="post" action="register">
        <span class="contact3-form-title">
          Register
        </span>

        <div class="wrap-input3 validate-input ${errors['first_name']}" data-validate="First Name is required">
          <input class="input3" type="text" name="first_name" placeholder="Your Fist Name" value="<c:out value="${first_name}"/>">
          <span class="focus-input3"></span>
        </div>

        <div class="wrap-input3 validate-input ${errors['last_name']}" data-validate="Last Name is required">
          <input class="input3" type="text" name="last_name" placeholder="Your Last Name" value="<c:out value="${last_name}"/>">
          <span class="focus-input3"></span>
        </div>

        <div class="wrap-input3 validate-input ${errors['email']}" data-validate = "Valid email is required: ex@abc.xyz">
          <input class="input3" type="text" name="email" placeholder="Your Email" value="<c:out value="${email}"/>">
          <span class="focus-input3"></span>
        </div>

        <div class="container-contact3-form-btn">
          <button class="contact3-form-btn">
            Submit
          </button>
        </div>
      </form>
    </div>
  </div>
</div>


<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="static/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="static/vendor/bootstrap/js/popper.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="static/vendor/select2/select2.min.js"></script>
<script>
    $(".selection-2").select2({
        minimumResultsForSearch: 20,
        dropdownParent: $('#dropDownSelect1')
    });
</script>
<!--===============================================================================================-->
<script src="static/js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
