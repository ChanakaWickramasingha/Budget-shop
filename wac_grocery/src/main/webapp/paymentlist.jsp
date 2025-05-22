<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
              <a href="create-account.html">Payment Methods</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div style="padding:50px">
<table class="table table-responsive-md card-table transactions-table" style="width: 100%; border-collapse: collapse; margin: 20px auto; background-color: #f9f9f9; border-radius: 8px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); overflow: hidden;">
    <thead>
        <tr style="background-color: #4CAF50; color: white; text-align: left;">
            <th style="padding: 12px;">Image</th>
            <th style="padding: 12px;">Payment ID</th>
            <th style="padding: 12px;">Card No</th>
            <th style="padding: 12px;">Exp</th>
            <th style="padding: 12px;">Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="cus" items="${pay}">
            <tr style="border-bottom: 1px solid #ddd;">
                <td style="padding: 12px;">
                    <img src="${cus.img}" style="width: 100px; height: 100px; border-radius: 10px; object-fit: cover;" alt="Customer Image" />
                </td>
                <td style="padding: 12px;">
                    <h6 class="fs-16 font-w600 mb-0">
                        <a href="javascript:void(0);" class="text-black" style="color: #333; text-decoration: none;">${cus.id}</a>
                    </h6>
                </td>
                <td style="padding: 12px;">
                    <h6 class="fs-16 text-black font-w600 mb-0" style="color: #333;">${cus.cno}</h6>
                </td>
                <td style="padding: 12px;">
                    <h6 class="fs-16 text-black font-w600 mb-0" style="color: #333;">${cus.exp}</h6>
                </td>
                <td style="padding: 12px;">
                    <a href="paymentupdate.jsp?id=${cus.id}&type=${cus.type}&cno=${cus.cno}&exp=${cus.exp}&cvv=${cus.cvv}&img=${cus.img}" style="color: #4CAF50; font-weight: bold; text-decoration: none; margin-right: 10px;">Update</a>
                    <a href="delpay?id=${cus.id}" style="color: #f44336; font-weight: bold; text-decoration: none;">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

										</div>
										<div class="templatecookie-btn">
            <a href="newpayment.jsp" target="_blank" class="purchase-btn">
                Add Payment Method
                <span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
                    </svg>
                </span>
            </a>
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