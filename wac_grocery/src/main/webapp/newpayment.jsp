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

<form method="post" action="addpay" enctype="multipart/form-data" style="max-width: 500px; margin: 20px auto; padding: 20px; border: 1px solid #ddd; border-radius: 8px; background-color: #f9f9f9; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);" onsubmit="return validatePaymentForm()">
    <h2 style="text-align: center; color: #333;">Add Payment</h2>
    
    <!-- Type -->
    <label for="name" style="display: block; margin-bottom: 8px; color: #555;">Type:</label>
    <input type="text" id="name" name="type" required style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ddd; border-radius: 5px;">
    <small id="typeError" style="color: red; display: none;">Type is required.</small>

    <!-- Card Number (Cno) -->
    <label for="price" style="display: block; margin-bottom: 8px; color: #555;">Cno:</label>
    <input type="text" name="cno" required pattern="\d{16}" style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ddd; border-radius: 5px;">
    <small id="cnoError" style="color: red; display: none;">Card number must be 16 digits.</small>

    <!-- Expiration Date -->
    <label for="des" style="display: block; margin-bottom: 8px; color: #555;">Expiration Date (MM/YY):</label>
    <input type="text" id="des" name="exp" required pattern="(0[1-9]|1[0-2])\/?([0-9]{2})" style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ddd; border-radius: 5px;">
    <small id="expError" style="color: red; display: none;">Expiration date must be in MM/YY format.</small>

    <!-- CVV -->
    <label for="stock" style="display: block; margin-bottom: 8px; color: #555;">CVV:</label>
    <input type="number" id="stock" name="cvv" required pattern="\d{3}" style="width: 100%; padding: 10px; margin-bottom: 15px; border: 1px solid #ddd; border-radius: 5px;">
    <small id="cvvError" style="color: red; display: none;">CVV must be exactly 3 digits.</small>

    <!-- Upload Image -->
    <label for="images" style="display: block; margin-bottom: 8px; color: #555;">Upload Image:</label>
    <input type="file" id="images" name="images" required style="margin-bottom: 15px;">
    <small id="imageError" style="color: red; display: none;">Please upload an image.</small>

    <button type="submit" style="width: 100%; padding: 10px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; font-size: 16px; cursor: pointer;">Submit</button>
</form>



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