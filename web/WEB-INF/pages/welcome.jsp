<%--
  Created by IntelliJ IDEA.
  Author: joel schar
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome Page</title>
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
      <span class="contact3-form-title">
        Welcome
      </span>
      <div class="container-contact3-form-btn">
        <c:url class="contact3-form-btn" value="/registerform/register.jsp">
          register
        </c:url>
      </div>
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
