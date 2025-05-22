<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="src/images/favicon/favicon-16x16.png" />
<link rel="stylesheet" href="src/lib/css/swiper-bundle.min.css" />
<link rel="stylesheet" href="src/lib/css/bvselect.css" />
<link rel="stylesheet" href="src/lib/css/bootstrap.min.css" />
<link rel="stylesheet" href="src/css/style.css" />
</head>
<body>

<%
String total = request.getParameter("total");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String adress = request.getParameter("adress");
String oid = request.getParameter("oid");

%>

<div class="loader">
            <div class="loader-icon">
                <img src="src/images/loader.gif" alt="loader" />
            </div>
        </div>
<jsp:include page="header.jsp" />

 <div class="section breedcrumb">
      <div class="breedcrumb__img-wrapper">
        <img src="src/images/banner/breedcrumb.jpg" alt="breedcrumb" />
        <div class="container">
          <ul class="breedcrumb__content">
            <li>
              <a href="index.html">
                <svg
                  width="18"
                  height="19"
                  viewBox="0 0 18 19"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <path
                    d="M1 8L9 1L17 8V18H12V14C12 13.2044 11.6839 12.4413 11.1213 11.8787C10.5587 11.3161 9.79565 11 9 11C8.20435 11 7.44129 11.3161 6.87868 11.8787C6.31607 12.4413 6 13.2044 6 14V18H1V8Z"
                    stroke="#808080"
                    stroke-width="1.5"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                  />
                </svg>
                <span> > </span>
              </a>
            </li>
            <li class="active">
              <a href="create-account.html">Order Management</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div style="padding:50px">

<form action="updord" method="post" style="max-width: 600px; margin: 20px auto; padding: 20px; border: 1px solid #ddd; border-radius: 8px; background-color: #f9f9f9; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
    <h2 style="text-align: center; color: #333;">Update Your Order</h2>

    <!-- User ID -->
    <label for="uid" style="display: block; margin-bottom: 8px; color: #555;">User ID</label>
    <input type="number" id="uid" name="oid" value="<%= oid %>" readonly required style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ddd; border-radius: 5px;">

    <!-- Email -->
    <label for="email" style="display: block; margin-bottom: 8px; color: #555;">Email</label>
    <input type="email" id="email" name="email" value="<%= email %>" required style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ddd; border-radius: 5px;">

    <!-- Phone -->
    <label for="phone" style="display: block; margin-bottom: 8px; color: #555;">Phone</label>
    <input type="text" id="phone" name="phone" value="<%= phone %>" required style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ddd; border-radius: 5px;">

    <!-- Total -->
    <label for="total" style="display: block; margin-bottom: 8px; color: #555;">Total Amount</label>
    <input type="text" id="total" name="total" value="<%= total %>" readonly required style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ddd; border-radius: 5px;">

    <!-- Address -->
    <label for="adress" style="display: block; margin-bottom: 8px; color: #555;">Address</label>
    <input type="text" name="adress" rows="4" value="<%= adress%>" required style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ddd; border-radius: 5px;"></input>

    <!-- Submit Button -->
    <button type="submit" style="width: 100%; padding: 10px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; font-size: 16px; cursor: pointer;">Update Order</button>
</form>

    
    </div>
										
										
										<script src="src/lib/js/jquery.min.js"></script>
        <script src="src/lib/js/countfect.min.js"></script>
        <script src="src/lib/js/swiper-bundle.min.js"></script>
        <script src="src/lib/js/bvselect.js"></script>
        <script src="src/lib/js/bootstrap.bundle.min.js"></script>
        <script src="src/lib/js/jquery.syotimer.min.js"></script>
        <script src="src/js/main.js"></script>
        <script src="src/js/home5.js"></script>

</body>
</html>