<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
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


        <!-- Header Section start -->
        <jsp:include page="header.jsp" />
        <!-- Header  Section start -->

        <!-- Banner  Section Start  -->
        <jsp:include page="banner.jsp" />
        <!-- Banner Section end  -->

        <!-- Shipping  Section Start  -->
        <jsp:include page="shipping.jsp" />
        <!-- Shipping  Section end  -->

        <!-- Featured Products   Start  -->
       <section class="section section--xl featured featured--five">
    <div class="container">
        <div class="section__head">
            <h2 class="section--title-one font-title--lg">Featured Products</h2>
            <a href="shop-01.html" class="view-all-link">
                View All
                <span>
                    <svg width="17" height="15" viewBox="0 0 17 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M16 7.50049H1" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path d="M9.95001 1.47559L16 7.49959L9.95001 13.5246" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                </span>
            </a>
        </div>
        <div class="swiper-container featured-slider--five">
            <div class="swiper-wrapper">
                <c:forEach var="cus" items="${products}">
                    <div class="swiper-slide">
                        <div class="cards-md cards-md--four w-100">
                            <div class="cards-md__img-wrapper">
                                <a href="">
                                    <img src="${cus.img}" alt="Product Image" />
                                </a>
                                
                                    <div class="cards-md__info-price" style="padding-left:10px">
                                    <h6 class="font-body--md-400">${cus.name }</h6>
                                        <span class="font-body--lg-500">Rs. ${cus.price}</span>
                                        
                                    </div>
                                
                            </div>
                            <a href="productdetails.jsp?id=${cus.id }&name=${cus.name}&price=${cus.price}&img=${cus.img}&stock=${cus.stock}" 
   style="margin-left: 90px; margin-bottom: 10px; background-color: black; padding: 10px 20px; color: white; text-decoration: none; font-weight: bold; border-radius: 5px; display: inline-block; transition: background-color 0.3s ease;">
   Buy Now
</a>

                        </div>
                       
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>

        <!-- Featured Products   end  -->

        <!-- Top Category Section Start  -->
        <jsp:include page="topcategory.jsp" />
        <!-- Top Category Section End  -->

        <!-- Food Store section start  -->
        
        <!-- Food Store section  end  -->

        <!-- Counter Section start  -->
        
        <!-- Counter Section end   -->

        <!--  Banners-sale section start  -->
        
        <!--  Banners-sale section end  -->

        <!-- Best Seller products  Start  -->
        
        <!-- Best Seller products  end  -->

        <!-- Latest news start  -->
        
        <!-- Latest news end -->

        <!--  Testimonial start  -->
        
        <!--  Testimonial end  -->

        <!-- brand-name Section Start  -->
        
        <!-- brand-name Section end  -->

        <!-- News letter section start  -->
       
        <!-- News letter section end  -->

        <!--Footer Section Start  -->
        
        <!--Footer Section end  -->

        <!-- Modal -->
        <div class="modal fade newsletter-popup" id="newsletter" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="row newsletter-popup__content">
                            <div class="col-lg-5">
                                <div class="newsletter-popup__img-wrapper">
                                    <img src="src/images/banner/banner-sm-18.png" alt="newsletter" />
                                </div>
                            </div>
                            <div class="col-lg-7">
                                <div class="newsletter-popup__text-content">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    <h5 class="font-title--xl">Subscribe to Our Newsletter</h5>
                                    <p class="font-body--lg">
                                        Subscribe to our newlletter and Save your
                                        <span>20% money </span> with discount code today.
                                    </p>

                                    <form action="#">
                                        <div class="contact-mail">
                                            <input type="email" placeholder="Enter Your email" />
                                            <button class="button button--md">Subscribe</button>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="doNotShowNewsletter" />
                                            <label class="form-check-label font-body--md-400" for="doNotShowNewsletter">
                                                Do not show this window
                                            </label>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Shopping Cart sidebar  start  -->
        <div class="shopping-cart">
            <div class="shopping-cart-top">
                <div class="shopping-cart-header">
                    <h5 class="font-body--xxl-500">Shopping Cart (<span class="count">2</span>)</h5>
                    <button class="close">
                        <svg width="45" height="45" viewBox="0 0 45 45" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="22.5" cy="22.5" r="22.5" fill="white" />
                            <path d="M28.75 16.25L16.25 28.75" stroke="#1A1A1A" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                            <path d="M16.25 16.25L28.75 28.75" stroke="#1A1A1A" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        </svg>
                    </button>
                </div>

                <div class="shopping-cart__product-content">
                    <div class="shopping-cart__product-content-item">
                        <div class="img-wrapper">
                            <img src="src/images/products/img-01.png" alt="product" />
                        </div>
                        <div class="text-content">
                            <h5 class="font-body--md-400">Fresh Indian Orange</h5>
                            <p class="font-body--md-400">1kg x <span class="font-body--md-500">12.00</span></p>
                        </div>
                    </div>
                    <button class="delete-item">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12 23C18.0748 23 23 18.0748 23 12C23 5.92525 18.0748 1 12 1C5.92525 1 1 5.92525 1 12C1 18.0748 5.92525 23 12 23Z" stroke="#CCCCCC" stroke-miterlimit="10" />
                            <path d="M16 8L8 16" stroke="#666666" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                            <path d="M16 16L8 8" stroke="#666666" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        </svg>
                    </button>
                </div>

                <div class="shopping-cart__product-content">
                    <div class="shopping-cart__product-content-item">
                        <div class="img-wrapper">
                            <img src="src/images/products/img-01.png" alt="product" />
                        </div>
                        <div class="text-content">
                            <h5 class="font-body--md-400">Fresh Indian Orange</h5>
                            <p class="font-body--md-400">1kg x <span class="font-body--md-500">12.00</span></p>
                        </div>
                    </div>
                    <button class="delete-item">
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12 23C18.0748 23 23 18.0748 23 12C23 5.92525 18.0748 1 12 1C5.92525 1 1 5.92525 1 12C1 18.0748 5.92525 23 12 23Z" stroke="#CCCCCC" stroke-miterlimit="10" />
                            <path d="M16 8L8 16" stroke="#666666" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                            <path d="M16 16L8 8" stroke="#666666" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        </svg>
                    </button>
                </div>
            </div>
            <div class="shopping-cart-bottom">
                <div class="shopping-cart-product-info">
                    <p class="product-count font-body--lg-400">2 Product</p>
                    <span class="product-price font-body--lg-500">$26.00</span>
                </div>

                <form action="#">
                    <button class="button button--lg w-100">Checkout</button>
                    <button class="button button--lg button--disable w-100">
                        go to cart
                    </button>
                </form>
            </div>
        </div>
        <!-- Shopping Cart sidebar  end -->
        <!-- Product Quick View Modal -->
        <div class="modal fade" id="productView" tabindex="-1" aria-labelledby="productViewLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="row productsView" style="margin-top: 32px;">
                            <div class="col-xl-6">
                                <!-- Product View Slider -->
                                <div class="gallery-view">
                                    <div class="gallery-items">
                                        <div class="swiper-container gallery-items-slider swiper-container-initialized swiper-container-vertical swiper-container-pointer-events">
                                            <div class="swiper-wrapper" id="swiper-wrapper-107ed06721010fb13b8" aria-live="polite" style="transition-duration: 0ms; transform: translate3d(0px, -420px, 0px);">
                                                <div class="gallery-item swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="0" role="group" aria-label="1 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-01.png" alt="Slide 01" />
                                                </div>
                                                <div class="gallery-item swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="1" role="group" aria-label="2 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-02.png" alt="Slide 02" />
                                                </div>
                                                <div class="gallery-item swiper-slide swiper-slide-duplicate" data-swiper-slide-index="2" role="group" aria-label="3 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-03.png" alt="Slide 03" />
                                                </div>
                                                <div class="gallery-item swiper-slide swiper-slide-duplicate swiper-slide-prev" data-swiper-slide-index="3" role="group" aria-label="4 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-04.png" alt="Slide 04" />
                                                </div>
                                                <div class="gallery-item swiper-slide swiper-slide-active" data-swiper-slide-index="0" role="group" aria-label="5 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-01.png" alt="Slide 01" />
                                                </div>
                                                <div class="gallery-item swiper-slide swiper-slide-next" data-swiper-slide-index="1" role="group" aria-label="6 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-02.png" alt="Slide 02" />
                                                </div>
                                                <div class="gallery-item swiper-slide" data-swiper-slide-index="2" role="group" aria-label="7 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-03.png" alt="Slide 03" />
                                                </div>
                                                <div class="gallery-item swiper-slide swiper-slide-duplicate-prev" data-swiper-slide-index="3" role="group" aria-label="8 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-04.png" alt="Slide 04" />
                                                </div>
                                                <div class="gallery-item swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="0" role="group" aria-label="9 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-01.png" alt="Slide 01" />
                                                </div>
                                                <div class="gallery-item swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next" data-swiper-slide-index="1" role="group" aria-label="10 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-02.png" alt="Slide 02" />
                                                </div>
                                                <div class="gallery-item swiper-slide swiper-slide-duplicate" data-swiper-slide-index="2" role="group" aria-label="11 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-03.png" alt="Slide 03" />
                                                </div>
                                                <div class="gallery-item swiper-slide swiper-slide-duplicate" data-swiper-slide-index="3" role="group" aria-label="12 / 12" style="height: 105px;">
                                                    <img src="src/images/product-details/img-04.png" alt="Slide 04" />
                                                </div>
                                            </div>
                                            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                        </div>
                                        <div class="gallery-prev-item" tabindex="0" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-107ed06721010fb13b8">
                                            <div class="gallery-icon">
                                                <svg width="16" height="10" viewBox="0 0 16 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15 8.5L8 1.5L1 8.5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="gallery-next-item" tabindex="0" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-107ed06721010fb13b8">
                                            <div class="gallery-icon">
                                                <svg width="16" height="10" viewBox="0 0 16 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M15 1.5L8 8.5L1 1.5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="gallery-main-image products__gallery-img--lg">
                                        <img class="product-main-image" src="src/images/product-details/img-01.png" alt="Slide 01" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <!-- Products information -->
                                <div class="products__content">
                                    <div class="products__content-title">
                                        <h2 class="font-title--md">Chinese Cabbage</h2>
                                        <span class="label stock-in">in Stock</span>
                                        <!-- <span class="label stock-out">Stock out</span> -->
                                    </div>
                                    <div class="products__content-info">
                                        <ul class="ratings">
                                            <li>
                                                <a href="#">
                                                    <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M9.31008 13.9111L12.8566 16.1577C13.31 16.4446 13.8725 16.0176 13.7381 15.4883L12.7138 11.458C12.6848 11.3458 12.6882 11.2276 12.7234 11.1172C12.7586 11.0067 12.8243 10.9084 12.9129 10.8336L16.0933 8.18708C16.5106 7.83946 16.2958 7.1459 15.7586 7.11102L11.6056 6.84102C11.4938 6.83309 11.3866 6.79356 11.2964 6.72704C11.2061 6.66052 11.1367 6.56974 11.096 6.46527L9.5469 2.5649C9.50472 2.45405 9.42984 2.35864 9.33219 2.29132C9.23455 2.22401 9.11875 2.18796 9.00015 2.18796C8.88155 2.18796 8.76575 2.22401 8.6681 2.29132C8.57046 2.35864 8.49558 2.45405 8.4534 2.5649L6.90427 6.46527C6.86372 6.56985 6.79429 6.66074 6.70406 6.72737C6.61383 6.79399 6.50652 6.83361 6.39465 6.84158L2.24171 7.11158C1.70508 7.1459 1.48908 7.83946 1.90702 8.18708L5.0874 10.8342C5.17588 10.9089 5.2415 11.0071 5.27673 11.1175C5.31195 11.2278 5.31534 11.3458 5.28652 11.458L4.33702 15.1958C4.17558 15.8309 4.85115 16.3433 5.39452 15.9985L8.69077 13.9111C8.78342 13.8522 8.89093 13.8209 9.00071 13.8209C9.11049 13.8209 9.218 13.8522 9.31065 13.9111H9.31008Z"
                                                            fill="#FF8A00"
                                                        />
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M9.31008 13.9111L12.8566 16.1577C13.31 16.4446 13.8725 16.0176 13.7381 15.4883L12.7138 11.458C12.6848 11.3458 12.6882 11.2276 12.7234 11.1172C12.7586 11.0067 12.8243 10.9084 12.9129 10.8336L16.0933 8.18708C16.5106 7.83946 16.2958 7.1459 15.7586 7.11102L11.6056 6.84102C11.4938 6.83309 11.3866 6.79356 11.2964 6.72704C11.2061 6.66052 11.1367 6.56974 11.096 6.46527L9.5469 2.5649C9.50472 2.45405 9.42984 2.35864 9.33219 2.29132C9.23455 2.22401 9.11875 2.18796 9.00015 2.18796C8.88155 2.18796 8.76575 2.22401 8.6681 2.29132C8.57046 2.35864 8.49558 2.45405 8.4534 2.5649L6.90427 6.46527C6.86372 6.56985 6.79429 6.66074 6.70406 6.72737C6.61383 6.79399 6.50652 6.83361 6.39465 6.84158L2.24171 7.11158C1.70508 7.1459 1.48908 7.83946 1.90702 8.18708L5.0874 10.8342C5.17588 10.9089 5.2415 11.0071 5.27673 11.1175C5.31195 11.2278 5.31534 11.3458 5.28652 11.458L4.33702 15.1958C4.17558 15.8309 4.85115 16.3433 5.39452 15.9985L8.69077 13.9111C8.78342 13.8522 8.89093 13.8209 9.00071 13.8209C9.11049 13.8209 9.218 13.8522 9.31065 13.9111H9.31008Z"
                                                            fill="#FF8A00"
                                                        />
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M9.31008 13.9111L12.8566 16.1577C13.31 16.4446 13.8725 16.0176 13.7381 15.4883L12.7138 11.458C12.6848 11.3458 12.6882 11.2276 12.7234 11.1172C12.7586 11.0067 12.8243 10.9084 12.9129 10.8336L16.0933 8.18708C16.5106 7.83946 16.2958 7.1459 15.7586 7.11102L11.6056 6.84102C11.4938 6.83309 11.3866 6.79356 11.2964 6.72704C11.2061 6.66052 11.1367 6.56974 11.096 6.46527L9.5469 2.5649C9.50472 2.45405 9.42984 2.35864 9.33219 2.29132C9.23455 2.22401 9.11875 2.18796 9.00015 2.18796C8.88155 2.18796 8.76575 2.22401 8.6681 2.29132C8.57046 2.35864 8.49558 2.45405 8.4534 2.5649L6.90427 6.46527C6.86372 6.56985 6.79429 6.66074 6.70406 6.72737C6.61383 6.79399 6.50652 6.83361 6.39465 6.84158L2.24171 7.11158C1.70508 7.1459 1.48908 7.83946 1.90702 8.18708L5.0874 10.8342C5.17588 10.9089 5.2415 11.0071 5.27673 11.1175C5.31195 11.2278 5.31534 11.3458 5.28652 11.458L4.33702 15.1958C4.17558 15.8309 4.85115 16.3433 5.39452 15.9985L8.69077 13.9111C8.78342 13.8522 8.89093 13.8209 9.00071 13.8209C9.11049 13.8209 9.218 13.8522 9.31065 13.9111H9.31008Z"
                                                            fill="#FF8A00"
                                                        />
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M9.31008 13.9111L12.8566 16.1577C13.31 16.4446 13.8725 16.0176 13.7381 15.4883L12.7138 11.458C12.6848 11.3458 12.6882 11.2276 12.7234 11.1172C12.7586 11.0067 12.8243 10.9084 12.9129 10.8336L16.0933 8.18708C16.5106 7.83946 16.2958 7.1459 15.7586 7.11102L11.6056 6.84102C11.4938 6.83309 11.3866 6.79356 11.2964 6.72704C11.2061 6.66052 11.1367 6.56974 11.096 6.46527L9.5469 2.5649C9.50472 2.45405 9.42984 2.35864 9.33219 2.29132C9.23455 2.22401 9.11875 2.18796 9.00015 2.18796C8.88155 2.18796 8.76575 2.22401 8.6681 2.29132C8.57046 2.35864 8.49558 2.45405 8.4534 2.5649L6.90427 6.46527C6.86372 6.56985 6.79429 6.66074 6.70406 6.72737C6.61383 6.79399 6.50652 6.83361 6.39465 6.84158L2.24171 7.11158C1.70508 7.1459 1.48908 7.83946 1.90702 8.18708L5.0874 10.8342C5.17588 10.9089 5.2415 11.0071 5.27673 11.1175C5.31195 11.2278 5.31534 11.3458 5.28652 11.458L4.33702 15.1958C4.17558 15.8309 4.85115 16.3433 5.39452 15.9985L8.69077 13.9111C8.78342 13.8522 8.89093 13.8209 9.00071 13.8209C9.11049 13.8209 9.218 13.8522 9.31065 13.9111H9.31008Z"
                                                            fill="#FF8A00"
                                                        />
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M9.31008 13.9111L12.8566 16.1577C13.31 16.4446 13.8725 16.0176 13.7381 15.4883L12.7138 11.458C12.6848 11.3458 12.6882 11.2276 12.7234 11.1172C12.7586 11.0067 12.8243 10.9084 12.9129 10.8336L16.0933 8.18708C16.5106 7.83946 16.2958 7.1459 15.7586 7.11102L11.6056 6.84102C11.4938 6.83309 11.3866 6.79356 11.2964 6.72704C11.2061 6.66052 11.1367 6.56974 11.096 6.46527L9.5469 2.5649C9.50472 2.45405 9.42984 2.35864 9.33219 2.29132C9.23455 2.22401 9.11875 2.18796 9.00015 2.18796C8.88155 2.18796 8.76575 2.22401 8.6681 2.29132C8.57046 2.35864 8.49558 2.45405 8.4534 2.5649L6.90427 6.46527C6.86372 6.56985 6.79429 6.66074 6.70406 6.72737C6.61383 6.79399 6.50652 6.83361 6.39465 6.84158L2.24171 7.11158C1.70508 7.1459 1.48908 7.83946 1.90702 8.18708L5.0874 10.8342C5.17588 10.9089 5.2415 11.0071 5.27673 11.1175C5.31195 11.2278 5.31534 11.3458 5.28652 11.458L4.33702 15.1958C4.17558 15.8309 4.85115 16.3433 5.39452 15.9985L8.69077 13.9111C8.78342 13.8522 8.89093 13.8209 9.00071 13.8209C9.11049 13.8209 9.218 13.8522 9.31065 13.9111H9.31008Z"
                                                            fill="#FF8A00"
                                                        />
                                                    </svg>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="font-body--md-400 review-count">4 Review</a>
                                            </li>
                                        </ul>
                                        <span class="dot">.</span>
                                        <h5 class="font-body--md-500">
                                            Sku:
                                            <span class="counting font-body--md-400">2,51,594</span>
                                        </h5>
                                    </div>

                                    <div class="products__content-price">
                                        <h2 class="font-body--xxxl-500">
                                            <del class="font-body--xxl-400">$48.00</del>
                                            $17.28
                                        </h2>
                                        <span class="label sale-off"> 64% off </span>
                                    </div>
                                </div>
                                <!-- brand  -->
                                <div class="products__content">
                                    <div class="products__content-brand">
                                        <div class="brand-name">
                                            <h2 class="font-body--md-400">Brand:</h2>
                                            <div class="brand-name-logo">
                                                <!-- <span class="icon">
                                                    <svg width="32" height="14" viewBox="0 0 32 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M5.13333 7.00159C17.2644 -5.59603 31.2617 7.00159 31.2617 7.00159C31.2617 7.00159 17.2644 19.5992 5.13333 7.00159Z" fill="#36C63F" />
                                                        <path
                                                            d="M22.8938 12.196C27.954 10.6073 31.4454 7.49925 31.5916 7.36769L32 7.00006L31.5916 6.63244C31.4454 6.50087 27.954 3.39274 22.8938 1.80404C19.902 0.864788 16.9897 0.661537 14.2377 1.20004C10.858 1.86129 7.72564 3.64642 4.92432 6.50543L-2.44735e-07 6.50543L-2.87974e-07 7.49463L4.92432 7.49463C7.7257 10.3536 10.8579 12.1388 14.2377 12.8C16.9897 13.3385 19.9021 13.1353 22.8938 12.196ZM14.4097 11.8258C11.5163 11.256 8.80595 9.80057 6.33845 7.49463L13.3259 7.49463L15.9805 10.1493L16.6798 9.44982L14.7247 7.49469L20.5294 7.49469L20.5294 6.5055L17.0575 6.5055L19.0127 4.5503L18.3133 3.85092L15.6587 6.5055L10.992 6.5055L12.4806 5.01687L11.7812 4.31749L9.59314 6.50556L6.33839 6.50556C8.80595 4.19961 11.5163 2.74417 14.4097 2.17429C16.9942 1.66529 19.7388 1.8551 22.5674 2.73842C26.4272 3.9438 29.4068 6.133 30.4887 7.00013C29.4067 7.86732 26.4272 10.0564 22.5674 11.2618C19.7389 12.1451 16.9942 12.3349 14.4097 11.8258Z"
                                                            fill="#009F06"
                                                        />
                                                        <path opacity="0.3" d="M22.3945 7.49332L22.3945 6.50421L21.4615 6.50421L21.4615 7.49332L22.3945 7.49332Z" fill="white" />
                                                        <path opacity="0.2" d="M24.2617 7.49332L24.2617 6.50421L23.3287 6.50421L23.3287 7.49332L24.2617 7.49332Z" fill="#1A1A1A" />
                                                    </svg>
                                                </span>
                                                <h6>farmarys</h6> -->
                                                <img src="./src/images/brand-icon/brand-img.png" alt="">
                                            </div>
                                        </div>
                                        <div class="social-site">
                                            <h2 class="font-body--md-400">Share item:</h2>
                                            <ul class="social-icon">
                                                <li class="social-icon-link">
                                                    <a href="#">
                                                        <svg width="10" height="18" viewBox="0 0 10 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                d="M7.99764 2.98875H9.64089V0.12675C9.35739 0.08775 8.38239 0 7.24689 0C4.87764 0 3.25464 1.49025 3.25464 4.22925V6.75H0.640137V9.9495H3.25464V18H6.46014V9.95025H8.96889L9.36714 6.75075H6.45939V4.5465C6.46014 3.62175 6.70914 2.98875 7.99764 2.98875Z"
                                                                fill="currentColor"
                                                            ></path>
                                                        </svg>
                                                    </a>
                                                </li>
                                                <li class="social-icon-link">
                                                    <a href="#">
                                                        <svg width="18" height="16" viewBox="0 0 18 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                d="M18 2.41888C17.3306 2.7125 16.6174 2.90713 15.8737 3.00163C16.6388 2.54488 17.2226 1.82713 17.4971 0.962C16.7839 1.38725 15.9964 1.68763 15.1571 1.85525C14.4799 1.13413 13.5146 0.6875 12.4616 0.6875C10.4186 0.6875 8.77387 2.34575 8.77387 4.37863C8.77387 4.67113 8.79862 4.95238 8.85938 5.22013C5.7915 5.0705 3.07687 3.60013 1.25325 1.36025C0.934875 1.91263 0.748125 2.54488 0.748125 3.2255C0.748125 4.5035 1.40625 5.63638 2.38725 6.29225C1.79437 6.281 1.21275 6.10888 0.72 5.83775C0.72 5.849 0.72 5.86363 0.72 5.87825C0.72 7.6715 1.99912 9.161 3.6765 9.50413C3.37612 9.58625 3.04875 9.62563 2.709 9.62563C2.47275 9.62563 2.23425 9.61213 2.01038 9.56263C2.4885 11.024 3.84525 12.0984 5.4585 12.1333C4.203 13.1154 2.60888 13.7071 0.883125 13.7071C0.5805 13.7071 0.29025 13.6936 0 13.6565C1.63462 14.7106 3.57188 15.3125 5.661 15.3125C12.4515 15.3125 16.164 9.6875 16.164 4.81175C16.164 4.64863 16.1584 4.49113 16.1505 4.33475C16.8829 3.815 17.4982 3.16588 18 2.41888Z"
                                                                fill="currentColor"
                                                            ></path>
                                                        </svg>
                                                    </a>
                                                </li>
                                                <li class="social-icon-link">
                                                    <a href="#">
                                                        <svg width="16" height="18" viewBox="0 0 16 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                d="M8.24471 0C3.31136 0 0.687744 3.16139 0.687744 6.60855C0.687744 8.20724 1.58103 10.2008 3.01097 10.8331C3.22811 10.931 3.34624 10.8894 3.39462 10.688C3.43737 10.535 3.62525 9.79807 3.71638 9.45042C3.74451 9.33904 3.72988 9.24229 3.63988 9.13766C3.16511 8.58864 2.78821 7.58847 2.78821 6.65017C2.78821 4.24594 4.69967 1.91146 7.9522 1.91146C10.7648 1.91146 12.7325 3.73854 12.7325 6.35204C12.7325 9.30529 11.1698 11.3484 9.13912 11.3484C8.0152 11.3484 7.17816 10.4663 7.44367 9.37505C7.76431 8.07561 8.39321 6.6783 8.39321 5.74113C8.39321 4.90072 7.91844 4.20544 6.94865 4.20544C5.80447 4.20544 4.87631 5.33837 4.87631 6.85943C4.87631 7.82585 5.21832 8.47838 5.21832 8.47838C5.21832 8.47838 4.08652 13.0506 3.87614 13.9045C3.52062 15.3502 3.92451 17.6914 3.95939 17.8928C3.98077 18.0042 4.10565 18.0391 4.1754 17.9479C4.28678 17.8017 5.65484 15.8497 6.03848 14.4389C6.17799 13.9248 6.75064 11.84 6.75064 11.84C7.12753 12.5207 8.21546 13.0911 9.37426 13.0911C12.8214 13.0911 15.3123 10.0613 15.3123 6.30141C15.2999 2.69675 12.215 0 8.24471 0Z"
                                                                fill="currentColor"
                                                            ></path>
                                                        </svg>
                                                    </a>
                                                </li>
                                                <li class="social-icon-link">
                                                    <a href="#">
                                                        <svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path
                                                                d="M12.0027 24.0548C8.72269 24.0548 8.33602 24.0375 7.05602 23.9815C6.05785 23.9487 5.07259 23.7458 4.14269 23.3815C3.34693 23.0718 2.62426 22.6 2.02058 21.9961C1.4169 21.3922 0.945397 20.6694 0.636019 19.8735C0.28576 18.9402 0.0968427 17.9542 0.0773522 16.9575C0.00268554 15.6802 0.00268555 15.2615 0.00268555 12.0068C0.00268555 8.7175 0.0200189 8.3335 0.0773522 7.06017C0.0972691 6.06486 0.28618 5.08018 0.636019 4.14817C0.945042 3.35128 1.41686 2.62761 2.02134 2.02335C2.62583 1.4191 3.34968 0.947556 4.14669 0.638836C5.07821 0.287106 6.06315 0.0976949 7.05869 0.0788358C8.33202 0.0068358 8.75069 0.00683594 12.0027 0.00683594C15.3094 0.00683594 15.6894 0.0241691 16.9494 0.0788358C17.9467 0.0975025 18.936 0.286836 19.8694 0.638836C20.6661 0.947914 21.3898 1.41958 21.9943 2.02379C22.5987 2.628 23.0706 3.35149 23.38 4.14817C23.736 5.09484 23.9267 6.09484 23.9414 7.10417C24.016 8.3815 24.016 8.79883 24.016 12.0522C24.016 15.3055 23.9974 15.7322 23.9414 16.9948C23.9214 17.9924 23.7321 18.9794 23.3814 19.9135C23.0712 20.7099 22.5988 21.4332 21.9942 22.0373C21.3896 22.6414 20.666 23.1133 19.8694 23.4228C18.936 23.7722 17.9507 23.9615 16.9547 23.9815C15.6814 24.0548 15.264 24.0548 12.0027 24.0548ZM11.9574 2.1175C8.69602 2.1175 8.35735 2.1335 7.08402 2.19084C6.32355 2.20078 5.57042 2.34103 4.85735 2.6055C4.33726 2.80486 3.86471 3.11098 3.47017 3.50414C3.07563 3.89731 2.76786 4.36878 2.56669 4.88817C2.30002 5.60817 2.16002 6.3695 2.15202 7.1375C2.08135 8.4295 2.08135 8.76817 2.08135 12.0068C2.08135 15.2068 2.09335 15.5948 2.15202 16.8788C2.16402 17.6388 2.30402 18.3922 2.56669 19.1055C2.97469 20.1548 3.80669 20.9842 4.85869 21.3868C5.57083 21.653 6.32382 21.7933 7.08402 21.8015C8.37469 21.8762 8.71469 21.8762 11.9574 21.8762C15.228 21.8762 15.5667 21.8602 16.8294 21.8015C17.5899 21.7923 18.3432 21.652 19.056 21.3868C19.5733 21.186 20.0432 20.8796 20.4357 20.4873C20.8282 20.095 21.1348 19.6254 21.336 19.1082C21.6027 18.3882 21.7427 17.6255 21.7507 16.8575H21.7654C21.8227 15.5828 21.8227 15.2428 21.8227 11.9855C21.8227 8.72817 21.808 8.3855 21.7507 7.11217C21.7386 6.35278 21.5984 5.60088 21.336 4.88817C21.1353 4.37023 20.8289 3.89977 20.4364 3.50677C20.0438 3.11376 19.5737 2.80682 19.056 2.6055C18.3427 2.33884 17.5894 2.20017 16.8294 2.19084C15.54 2.1175 15.2027 2.1175 11.9574 2.1175ZM12.0027 18.1655C10.7834 18.1663 9.59136 17.8055 8.5772 17.1287C7.56304 16.4519 6.77236 15.4896 6.30517 14.3634C5.83798 13.2373 5.71526 11.9978 5.95254 10.8019C6.18982 9.60598 6.77644 8.50729 7.63819 7.64478C8.49995 6.78228 9.59814 6.19471 10.7939 5.9564C11.9896 5.71808 13.2291 5.83973 14.3557 6.30594C15.4823 6.77216 16.4453 7.56201 17.1229 8.57558C17.8006 9.58916 18.1624 10.7809 18.1627 12.0002C18.1606 13.6337 17.5111 15.1999 16.3565 16.3555C15.2018 17.5111 13.6363 18.162 12.0027 18.1655ZM12.0027 7.9975C11.2116 7.9975 10.4382 8.2321 9.78041 8.67162C9.12261 9.11115 8.60992 9.73586 8.30717 10.4668C8.00442 11.1977 7.9252 12.0019 8.07954 12.7779C8.23388 13.5538 8.61485 14.2665 9.17426 14.8259C9.73367 15.3853 10.4464 15.7663 11.2223 15.9206C11.9982 16.075 12.8025 15.9958 13.5334 15.693C14.2643 15.3903 14.889 14.8776 15.3286 14.2198C15.7681 13.562 16.0027 12.7886 16.0027 11.9975C16.0002 10.9374 15.578 9.92141 14.8284 9.1718C14.0788 8.42219 13.0628 7.99997 12.0027 7.9975ZM18.4027 7.04683C18.2139 7.04613 18.0272 7.00826 17.8531 6.93538C17.6789 6.8625 17.5209 6.75604 17.3879 6.62208C17.1193 6.35153 16.9693 5.98537 16.9707 5.60417C16.9721 5.22296 17.1249 4.85793 17.3954 4.58938C17.666 4.32083 18.0321 4.17075 18.4134 4.17217C18.7946 4.17358 19.1596 4.32637 19.4281 4.59693C19.6967 4.86748 19.8468 5.23363 19.8454 5.61484C19.8439 5.99604 19.6912 6.36107 19.4206 6.62962C19.15 6.89817 18.7839 7.04825 18.4027 7.04683Z"
                                                                fill="currentColor"
                                                            ></path>
                                                        </svg>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p class="products__content-brand-info font-body--md-400">
                                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nibh diam, blandit vel consequat nec, ultrices et ipsum. Nulla varius magna a consequat pulvinar.
                                    </p>
                                </div>
                                <!-- Action button -->
                                <div class="products__content">
                                    <div class="products__content-action">
                                        <div class="counter-btn-wrapper products__content-action-item">
                                            <button class="counter-btn-dec counter-btn" onclick="decrement()">
                                                -
                                            </button>
                                            <input type="number" id="counter-btn-counter" class="counter-btn-counter" min="1" max="1000" placeholder="1" />
                                            <button class="counter-btn-inc counter-btn" onclick="increment()">
                                                +
                                            </button>
                                        </div>
                                        <!-- add to cart  -->
                                        <button class="button button--md products__content-action-item w-50 d-flex">
                                            Add to Cart
                                            <span>
                                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M5.66667 7.33333H3.16667L1.5 16.5H16.5L14.8333 7.33333H12.3333M5.66667 7.33333V4.83333C5.66667 2.99239 7.15905 1.5 9 1.5V1.5C10.8409 1.5 12.3333 2.99238 12.3333 4.83333V7.33333M5.66667 7.33333H12.3333M5.66667 7.33333V9.83333M12.3333 7.33333V9.83333"
                                                        stroke="currentColor"
                                                        stroke-width="1.3"
                                                        stroke-linecap="round"
                                                        stroke-linejoin="round"
                                                    />
                                                </svg>
                                            </span>
                                        </button>

                                        <!-- fav  -->
                                        <button class="button-fav products__content-action-item">
                                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M9.9996 17.5451C-6.66672 8.33336 4.99993 -1.66664 9.9996 4.65674C14.9999 -1.66664 26.6666 8.33336 9.9996 17.5451Z" stroke="currentColor" stroke-width="1.5" />
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                                <!-- Tags  -->
                                <div class="products__content">
                                    <h5 class="products__content-category font-body--md-500">Category: <span>Vegetables</span></h5>
                                    <div class="products__content-tags">
                                        <h5 class="font-body--md-500">Tag :</h5>
                                        <div class="products__content-tags-item">
                                            <a href="#" class="font-body--md-400">Vegetables</a>
                                            <a href="#" class="font-body--md-400">Healthy</a>
                                            <a href="#" class="font-body--md-400">Chinese</a>
                                            <a href="#" class="font-body--md-400">Cabbage</a>
                                            <a href="#" class="font-body--md-400">Green Cabbage </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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