<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="src/images/favicon/favicon-16x16.png" />
        <link rel="stylesheet" href="src/lib/css/swiper-bundle.min.css" />
        <link rel="stylesheet" href="src/lib/css/bvselect.css" />
        <link rel="stylesheet" href="src/lib/css/venobox.css" />
        <link rel="stylesheet" href="src/lib/css/bootstrap.min.css" />
        <link rel="stylesheet" href="src/css/style.css" />
        <script>
        // Function to send data to the servlet
        function sendData() {
            const pname = "apple";  // Product name
            const price = "22";     // Product price
            const qty = "20";       // Product quantity

            const body = 'pname=' + encodeURIComponent(pname) + 
                         '&price=' + encodeURIComponent(price) + 
                         '&qty=' + encodeURIComponent(qty);

            fetch('addtocart', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: body
            })
            .then(response => response.text())
            .then(data => {
                // Check if the element exists before trying to set innerHTML
                const responseDiv = document.getElementById("response");
                if (responseDiv) {
                    responseDiv.innerHTML = data;
                } else {
                    console.error("Element with ID 'response' not found.");
                }
            })
            .catch(error => console.error('Error:', error));
        }
    </script>


</head>
<body>
        <div class="loader">
            <div class="loader-icon">
                <img src="src/images/loader.gif" alt="loader" />
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
                    <a href="shopping-cart.html" class="button button--lg w-100">
                        go to cart
                    </a>
                </form>
            </div>
        </div>
        <!-- Shopping Cart sidebar  end -->

        <!-- Header Section start -->
        <header class="header header--one">
            <div class="header__top">
                <div class="container">
                    <div class="header__top-content">
                        <div class="header__top-left">
                            <p class="font-body--sm">
                                <span>
                                    <svg width="17" height="20" viewBox="0 0 17 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M16 8.36364C16 14.0909 8.5 19 8.5 19C8.5 19 1 14.0909 1 8.36364C1 6.41068 1.79018 4.53771 3.1967 3.15676C4.60322 1.77581 6.51088 1 8.5 1C10.4891 1 12.3968 1.77581 13.8033 3.15676C15.2098 4.53771 16 6.41068 16 8.36364Z"
                                            stroke="currentColor"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                        />
                                        <path
                                            d="M8.5 10.8182C9.88071 10.8182 11 9.71925 11 8.36364C11 7.00803 9.88071 5.90909 8.5 5.90909C7.11929 5.90909 6 7.00803 6 8.36364C6 9.71925 7.11929 10.8182 8.5 10.8182Z"
                                            stroke="currentColor"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                        />
                                    </svg>
                                </span>
                                Store Location: 344/B, Gampaha, Srilanka
                            </p>
                        </div>
                        <div class="header__top-right">
                            <div class="header__dropdown">
                                <select id="selectbox2" class="header__dropdown-menu">
                                    <option value="pt_1">USD</option>
                                    <option value="en_2">Tk</option>

                                    <option value="ch_4">yan</option>
                                    <option value="5">rup</option>
                                </select>
                            </div>
                            <div class="header__in">
                                <a href="sign-in.html">Sign in </a>
                                <span>/</span>
                                <a href="create-account.html">Sign up</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header__center">
                <div class="container">
                    <div class="header__center-content">
                        <div class="header__brand">
                            <button class="header__sidebar-btn">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M3 12H21" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M3 6H21" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M3 18H15" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                            </button>
                            <a href="index.html">
                                <img src="src/images/logo.png" alt="brand-logo" />
                            </a>
                        </div>
                        <form action="#">
                            <div class="header__input-form">
                                <input type="text" placeholder="Search" />
                                <span class="search-icon">
                                    <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M9.16667 16.3333C12.8486 16.3333 15.8333 13.3486 15.8333 9.66667C15.8333 5.98477 12.8486 3 9.16667 3C5.48477 3 2.5 5.98477 2.5 9.66667C2.5 13.3486 5.48477 16.3333 9.16667 16.3333Z"
                                            stroke="currentColor"
                                            stroke-width="1.5"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                        />
                                        <path d="M17.4999 18L13.8749 14.375" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    </svg>
                                </span>
                                <button type="submit" class="search-btn button button--md">
                                    Search
                                </button>
                            </div>
                        </form>
                        <div class="header__cart">
                            <div class="header__cart-item">
                                <a class="fav" href="wishlist.html">
                                    <svg width="25" height="23" viewBox="0 0 20 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M9.9996 16.5451C-6.66672 7.3333 4.99993 -2.6667 9.9996 3.65668C14.9999 -2.6667 26.6666 7.3333 9.9996 16.5451Z" stroke="#1A1A1A" stroke-width="1.5" />
                                    </svg>
                                </a>
                            </div>
                            <div class="header__cart-item">
                                <div class="header__cart-item-content" id="cart-bag">
                                    <button class="cart-bag">
                                        <svg width="34" height="35" viewBox="0 0 34 35" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M11.3333 14.6667H7.08333L4.25 30.25H29.75L26.9167 14.6667H22.6667M11.3333 14.6667V10.4167C11.3333 7.28705 13.8704 4.75 17 4.75V4.75C20.1296 4.75 22.6667 7.28705 22.6667 10.4167V14.6667M11.3333 14.6667H22.6667M11.3333 14.6667V18.9167M22.6667 14.6667V18.9167"
                                                stroke="currentColor"
                                                stroke-width="1.5"
                                                stroke-linecap="round"
                                                stroke-linejoin="round"
                                            />
                                        </svg>
                                        <span class="item-number">2</span>
                                    </button>
                                    <div class="header__cart-item-content-info">
                                        <h5>Shopping cart:</h5>
                                        <span class="price">$57.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header__bottom header__bottom--white">
                <div class="container">
                    <div class="header__bottom-content">
                        <ul class="header__navigation-menu header__navigation-menu--two">
                            <li class="header__navigation-menu-link">
                                <a href="#">
                                    Home
                                    <span class="drop-icon">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M3.33332 5.66667L7.99999 10.3333L12.6667 5.66667" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </span>
                                </a>
                                <ul class="header__navigation-drop-menu">
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="index.html">Homepage 01</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="home-02.html">Homepage 02</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="home-03.html">Homepage 03</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="home-04.html">Homepage 04</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="home-05.html">Homepage 05</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="header__navigation-menu-link">
                                <a href="#">
                                    Shop
                                    <span class="drop-icon">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M3.33332 5.66667L7.99999 10.3333L12.6667 5.66667" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </span>
                                </a>
                                <ul class="header__navigation-drop-menu">
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="shop-01.html">Shop 01</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="shop-02.html">Shop 02</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="header__navigation-menu-link active">
                                <a href="#">
                                    Pages
                                    <span class="drop-icon">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M3.33332 5.66667L7.99999 10.3333L12.6667 5.66667" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </span>
                                </a>
                                <ul class="header__navigation-drop-menu">
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="user-dashboard.html">User Dashboard </a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="order-history.html">Order History </a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="order-details.html">Order Details </a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="account-setting.html">Account Settings </a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link active">
                                        <a href="product-details.html">Product Details</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="wishlist.html"> Wishlist</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="shopping-cart.html"> Shopping Cart</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="checkout.html"> Checkout</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="sign-in.html"> Sign in</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="create-account.html"> Create Account</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="faq.html"> faq</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="404.html"> Error 404</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="header__navigation-menu-link">
                                <a href="#">
                                    Blog
                                    <span class="drop-icon">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M3.33332 5.66667L7.99999 10.3333L12.6667 5.66667" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </span>
                                </a>
                                <ul class="header__navigation-drop-menu">
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="blog-list.html">Blog list</a>
                                    </li>
                                    <li class="header__navigation-drop-menu-link">
                                        <a href="single-blog.html">Single Blog</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="header__navigation-menu-link">
                                <a href="about.html">About us </a>
                            </li>
                            <li class="header__navigation-menu-link">
                                <a href="contact.html">Contact us</a>
                            </li>
                        </ul>

                        <a href="#" class="header__telephone-number dark">
                            <span>
                                <svg width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M14.4359 2.375C15.9193 2.77396 17.2718 3.55567 18.358 4.64184C19.4441 5.72801 20.2258 7.08051 20.6248 8.56388"
                                        stroke="currentColor"
                                        stroke-width="1.5"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                    />
                                    <path
                                        d="M13.5306 5.75687C14.4205 5.99625 15.2318 6.46521 15.8833 7.11678C16.5349 7.76835 17.0039 8.57967 17.2433 9.46949"
                                        stroke="currentColor"
                                        stroke-width="1.5"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                    />
                                    <path
                                        d="M7.115 11.6517C8.02238 13.5074 9.5263 15.0049 11.3859 15.9042C11.522 15.9688 11.6727 15.9966 11.8229 15.9851C11.9731 15.9736 12.1178 15.9231 12.2425 15.8386L14.9812 14.0134C15.1022 13.9326 15.2414 13.8833 15.3862 13.8698C15.5311 13.8564 15.677 13.8793 15.8107 13.9364L20.9339 16.1326C21.1079 16.2065 21.2532 16.335 21.3479 16.4987C21.4426 16.6623 21.4815 16.8523 21.4589 17.04C21.2967 18.307 20.6784 19.4714 19.7196 20.3154C18.7608 21.1593 17.5273 21.6249 16.25 21.625C12.3049 21.625 8.52139 20.0578 5.73179 17.2682C2.94218 14.4786 1.375 10.6951 1.375 6.75C1.37512 5.47279 1.84074 4.23941 2.68471 3.28077C3.52867 2.32213 4.6931 1.70396 5.96 1.542C6.14771 1.51936 6.33769 1.55832 6.50134 1.653C6.66499 1.74769 6.79345 1.89298 6.86738 2.067L9.06537 7.1945C9.1219 7.32698 9.14485 7.47137 9.13218 7.61485C9.11951 7.75833 9.07162 7.89647 8.99275 8.017L7.17275 10.7977C7.09015 10.923 7.04141 11.0675 7.03129 11.2171C7.02117 11.3668 7.05001 11.5165 7.115 11.6517V11.6517Z"
                                        stroke="currentColor"
                                        stroke-width="1.5"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                    />
                                </svg>

                                +94706888992
                            </span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="header__sidebar">
                <button class="header__cross">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M18 6L6 18" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                        <path d="M6 6L18 18" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                </button>
                <div class="header__mobile-sidebar">
                    <div class="header__mobile-top">
                        <form action="#">
                            <div class="header__mobile-input">
                                <input type="text" placeholder="Search" />
                                <button class="search-btn">
                                    <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M9.16667 16.3333C12.8486 16.3333 15.8333 13.3486 15.8333 9.66667C15.8333 5.98477 12.8486 3 9.16667 3C5.48477 3 2.5 5.98477 2.5 9.66667C2.5 13.3486 5.48477 16.3333 9.16667 16.3333Z"
                                            stroke="currentColor"
                                            stroke-width="1.5"
                                            stroke-linecap="round"
                                            stroke-linejoin="round"
                                        />
                                        <path d="M17.4999 18L13.8749 14.375" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    </svg>
                                </button>
                            </div>
                        </form>
                        <ul class="header__mobile-menu">
                            <li class="header__mobile-menu-item">
                                <a href="#" class="header__mobile-menu-item-link">
                                    Home
                                    <span class="drop-icon">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M3.33332 5.66667L7.99999 10.3333L12.6667 5.66667" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </span>
                                </a>
                                <ul class="header__mobile-dropdown-menu">
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="index.html">Home 01</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="home-02.html">Home 02</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="home-03.html">Home 03</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="home-04.html">Home 04</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="header__mobile-menu-item">
                                <a href="#" class="header__mobile-menu-item-link">
                                    Shop
                                    <span class="drop-icon">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M3.33332 5.66667L7.99999 10.3333L12.6667 5.66667" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </span>
                                </a>
                                <ul class="header__mobile-dropdown-menu">
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="shop-01.html">Shop 01</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="shop-02.html">Shop 02</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="header__mobile-menu-item">
                                <a href="#" class="header__mobile-menu-item-link">
                                    Pages
                                    <span class="drop-icon">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M3.33332 5.66667L7.99999 10.3333L12.6667 5.66667" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </span>
                                </a>
                                <ul class="header__mobile-dropdown-menu">
                                    <li class="header__mobile-dropdown-menu-link active">
                                        <a href="product-details.html ">Product Details</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="wishlist.html">Wishlist</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="shopping-cart.html">Shopping Cart</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="checkout.html">Checkout</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="sign-in.html">Sign in</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="create-account.html">Create Account</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="user-dashboard.html">User Dashboard</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="order-history.html">order history</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="order-details.html">Order Details</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="account-setting.html">Account Settings</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="faq.html">faq</a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="404.html">404</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="header__mobile-menu-item">
                                <a href="#" class="header__mobile-menu-item-link">
                                    Blog
                                    <span class="drop-icon">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M3.33332 5.66667L7.99999 10.3333L12.6667 5.66667" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </span>
                                </a>
                                <ul class="header__mobile-dropdown-menu">
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="single-blog.html">Single Blog </a>
                                    </li>
                                    <li class="header__mobile-dropdown-menu-link">
                                        <a href="blog-list.html">Blog list</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="header__mobile-menu-item">
                                <a href="about.html" class="header__mobile-menu-item-link">About</a>
                            </li>
                            <li class="header__mobile-menu-item">
                                <a href="contact.html" class="header__mobile-menu-item-link">Contacts</a>
                            </li>
                        </ul>
                    </div>
                    <div class="header__mobile-bottom">
                        <div class="header__mobile-user">
                            <div class="header__mobile-user--img">
                                <img src="src/images/user/img-03.png" alt="user" />
                            </div>
                            <div class="header__mobile-user--info">
                                <h2 class="font-body--lg-500">Dianne Russell</h2>
                                <p class="font-body--md-400">dianne.russell@gmail.com</p>
                            </div>
                        </div>
                        <div class="header__mobile-action d-none">
                            <a href="#" class="button button--md">Sign in</a>
                            <a href="#" class="button button--md button--disable">Sign up</a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header  Section start -->

        <!-- breedcrumb section start  -->
        <div class="section breedcrumb">
            <div class="breedcrumb__img-wrapper">
                <img src="src/images/banner/breedcrumb.jpg" alt="breedcrumb" />
                <div class="container">
                    <ul class="breedcrumb__content">
                        <li>
                            <a href="index.html">
                                <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
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
                        <li>
                            <a href="#">
                                category
                                <span> > </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Vegetables
                                <span> > </span>
                            </a>
                        </li>
                       
                    </ul>
                </div>
            </div>
        </div>
        <!-- breedcrumb section end   -->

        <!-- Products View Section Start  -->
        <%
		String id = request.getParameter("id");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String des = request.getParameter("des");
        String img = request.getParameter("img");
        String stock = request.getParameter("stock");
						        
	    					%>
        <section class="products section">
            <div class="container">
                <div class="row" style="margin-top: 32px;">
                    <div class="col-lg-6">
                        <!-- Product View Slider -->
                        <div class="gallery-view">
                            <div class="gallery-items">
                                
                                <div class="gallery-prev-item">
                                    <div class="gallery-icon">
                                        <svg width="16" height="10" viewBox="0 0 16 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M15 8.5L8 1.5L1 8.5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </div>
                                </div>
                                <div class="gallery-next-item">
                                    <div class="gallery-icon">
                                        <svg width="16" height="10" viewBox="0 0 16 10" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M15 1.5L8 8.5L1 1.5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        </svg>
                                    </div>
                                </div>
                            </div>

                            <div class="gallery-main-image products__gallery-img--lg">
                                <img class="product-main-image" src="<%= img %>" alt="Slide 01" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <!-- Products information -->
                        <div class="products__content">
                            <div class="products__content-title">
                                <h2 class="font-title--md"><%= name %></h2>
                                <span class="label stock-in"><%= stock %></span>
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
                                <h5 class="font-body--md-500">Sku:, <%= price %> <span class="counting font-body--md-400">2,51,594</span></h5>
                            </div>

                            <div class="products__content-price">
                                <h2 class="font-body--xxxl-500"><del class="font-body--xxl-400"></del>Rs. <%= price %>.00</h2>
                                <span class="label sale-off"> 64% off </span>
                            </div>
                        </div>
                        <!-- brand  -->
                        <div class="products__content">
                            <div class="products__content-brand">
                                <div class="brand-name">
                                    <h2 class="font-body--md-400">Brand:</h2>
                                    <a href="#" class="brand-name-logo">
                                        <img src="src/images/brand-icon/brand-img.png" alt="brand-img" />
                                    </a>
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
                            <form method="post" action="addcrt" ">
                                <div class="counter-btn-wrapper products__content-action-item">
                                    <button class="counter-btn-dec counter-btn" onclick="decrement()">
                                        -
                                    </button>
                                    <input type="number" id="counter-btn-counter" class="counter-btn-counter" min="0" max="1000" placeholder="0" name="qty"/>
                                    <button class="counter-btn-inc counter-btn" onclick="increment()">
                                        +
                                    </button>
                                </div>
                               
                                <input type="text" style="display:none" value="<%= price %>" name="iprice"/>
                                <input type="text" style="display:none" value="<%= name %>" name="pname"/>
                                <input type="text" style="display:none" value="<%= id %>" name="itemid"/>
                               
                                <!-- add to cart  -->
                                <button class="button button--md products__content-action-item" type="submit">
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
</form>
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
                            <h5 class="products__content-category font-body--md-500">Category: <a href="#">Vegetables</a></h5>
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
        </section>
        <!-- Products View Section end  -->

        <!-- Products Tabs Start  -->

        <section class="products-tab section section--xl">
            <div class="products-tab__btn">
                <div class="container">
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="pills-description-tab" data-bs-toggle="pill" data-bs-target="#pills-description" type="button" role="tab" aria-controls="pills-description" aria-selected="true">
                                Description
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-information-tab" data-bs-toggle="pill" data-bs-target="#pills-information" type="button" role="tab" aria-controls="pills-information" aria-selected="false">
                                Aditional information
                            </button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-customer-tab" data-bs-toggle="pill" data-bs-target="#pills-customer" type="button" role="tab" aria-controls="pills-customer" aria-selected="false">
                                customer feedback
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="products-tab__content">
                <div class="container">
                    <div class="tab-content" id="pills-tabContent">
                        <!-- Products Description  -->
                        <div class="tab-pane fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
                            <div class="row products-tab__description">
                                <div class="col-lg-7 order-lg-0 order-2">
                                    <p class="products-tab__description--text">
                                        Sed commodo aliquam dui ac porta. Fusce ipsum felis, imperdiet at posuere ac, viverra at mauris. Maecenas tincidunt ligula a sem vestibulum pharetra. Maecenas auctor tortor lacus, nec laoreet nisi
                                        porttitor vel. Etiam tincidunt metus vel dui interdum sollicitudin. Mauris sem ante, vestibulum nec orci vitae, aliquam mollis lacus. Sed et condimentum arcu, id molestie tellus. Nulla facilisi. Nam
                                        scelerisque vitae justo a convallis. Morbi urna ipsum, placerat quis commodo quis, egestas elementum leo. Donec convallis mollis enim. Aliquam id mi quam. Phasellus nec fringilla elit.
                                    </p>
                                    <p class="products-tab__description--text">
                                        Nulla mauris tellus, feugiat quis pharetra sed, gravida ac dui. Sed iaculis, metus faucibus elementum tincidunt, turpis mi viverra velit, pellentesque tristique neque mi eget nulla. Proin luctus
                                        elementum neque et pharetra.
                                    </p>

                                    <ul class="products-tab__description--list">
                                        <li>
                                            <span class="icon">
                                                <svg width="13" height="13" viewBox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M10.4173 3.125L4.68815 8.85417L2.08398 6.25" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                </svg>
                                            </span>
                                            <p>100 g of fresh leaves provides.</p>
                                        </li>
                                        <li>
                                            <span class="icon">
                                                <svg width="13" height="13" viewBox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M10.4173 3.125L4.68815 8.85417L2.08398 6.25" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                </svg>
                                            </span>
                                            <p>100 g of fresh leaves provides.</p>
                                        </li>
                                        <li>
                                            <span class="icon">
                                                <svg width="13" height="13" viewBox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M10.4173 3.125L4.68815 8.85417L2.08398 6.25" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                </svg>
                                            </span>
                                            <p>100 g of fresh leaves provides.</p>
                                        </li>
                                        <li>
                                            <span class="icon">
                                                <svg width="13" height="13" viewBox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M10.4173 3.125L4.68815 8.85417L2.08398 6.25" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                </svg>
                                            </span>
                                            <p>100 g of fresh leaves provides.</p>
                                        </li>
                                    </ul>

                                    <p class="products-tab__description--text">
                                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Beatae totam eos nostrum suscipit molestiae dolorem maxime, reprehenderit labore praesentium repudiandae a? Minus consequuntur ad dignissimos
                                        error corporis tenetur ducimus odit.
                                    </p>
                                </div>
                                <div class="col-lg-5 order-lg-0 order-1">
                                    <div class="products-video">
                                        <img src="src/images/members/img-10.png" alt="img-src" />
                                        <a href="https://youtu.be/JkaxUblCGz0" class="play-icon venobox" data-autoplay="true" data-vbtype="video">
                                            <span>
                                                <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M0 0V18L14 9L0 0Z" fill="currentColor" />
                                                </svg>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="products-video__card">
                                        <div class="products-video__card-item">
                                            <span class="icon">
                                                <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <g clip-path="url(#clip0)">
                                                        <path
                                                            d="M28.0671 24.7501C28.326 24.7501 28.5359 24.5402 28.5359 24.2813V13.0313C28.5359 12.4718 28.3178 11.8995 27.9219 11.4198L24.4454 7.20769C24.2633 6.987 24.0539 6.801 23.8265 6.65287C23.8405 6.50962 23.8484 6.36494 23.8484 6.21887V0.968872C23.8484 0.709997 23.6385 0.500122 23.3797 0.500122C23.1208 0.500122 22.9109 0.709997 22.9109 0.968872C22.9109 0.968872 22.91 6.26356 22.9096 6.28593C22.7762 6.26231 22.6409 6.25012 22.5047 6.25012H16.4422C16.0154 6.25012 15.597 6.36987 15.2224 6.58994C15.2062 6.59575 15.1902 6.60225 15.1744 6.60994L10.605 8.83568C10.0987 9.08962 9.69392 9.51556 9.46498 10.035C9.46248 10.0407 9.46011 10.0464 9.45786 10.0521L7.56861 14.8441C7.47367 15.085 7.59192 15.3572 7.83279 15.4522C7.88923 15.4744 7.94736 15.4849 8.00461 15.4849C8.19148 15.4849 8.36811 15.3724 8.44079 15.188L10.3264 10.4052C10.4682 10.0884 10.7161 9.82887 11.0204 9.67612L13.4347 8.50019L11.0249 11.4199C10.6641 11.857 10.4734 12.4143 10.4734 13.0314V29.2189C10.4734 29.4074 10.49 29.592 10.52 29.7719L5.68992 27.6316C4.59879 27.1482 4.10429 25.864 4.58779 24.769C4.58986 24.7642 4.59186 24.7594 4.59386 24.7547L7.64904 17.1619C7.74567 16.9217 7.62936 16.6487 7.38917 16.5521C7.14886 16.4554 6.87598 16.5718 6.77929 16.8119L3.72679 24.3976C3.04042 25.9632 3.74942 27.7971 5.31011 28.4886L10.9741 30.9984C10.981 31.0014 10.9881 31.0037 10.9951 31.0064C11.57 31.9046 12.5639 32.5001 13.6922 32.5001H25.2547C27.0333 32.5001 28.5359 30.9974 28.5359 29.2188V26.4688C28.5359 26.2099 28.326 26.0001 28.0672 26.0001C27.8083 26.0001 27.5984 26.2099 27.5984 26.4688V29.2188C27.5984 30.4893 26.5251 31.5626 25.2547 31.5626H13.6922C12.4343 31.5626 11.4109 30.5112 11.4109 29.2188V13.0313C11.4109 12.6289 11.5243 12.2875 11.748 12.0166L15.2244 7.80444C15.548 7.41244 15.9919 7.18756 16.4422 7.18756H22.5047C22.593 7.18756 22.681 7.1965 22.7679 7.21337C22.4745 8.21406 21.7476 9.04906 20.766 9.4675C20.5094 9.03819 20.0401 8.75006 19.5046 8.75006C18.6947 8.75006 18.0359 9.40894 18.0359 10.2188C18.0359 11.0287 18.6947 11.6876 19.5046 11.6876C20.2535 11.6876 20.8729 11.1239 20.962 10.3986C22.2244 9.92112 23.179 8.90937 23.6044 7.67444C23.6452 7.7155 23.6847 7.75869 23.7224 7.80444L27.1989 12.0166C27.4565 12.3287 27.5984 12.6891 27.5984 13.0314V24.2814C27.5984 24.5402 27.8082 24.7501 28.0671 24.7501ZM19.5046 10.7501C19.2117 10.7501 18.9734 10.5117 18.9734 10.2188C18.9734 9.92587 19.2117 9.68756 19.5046 9.68756C19.7975 9.68756 20.0359 9.92587 20.0359 10.2188C20.0359 10.5117 19.7975 10.7501 19.5046 10.7501Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M15.4424 25.4375C15.5623 25.4375 15.6823 25.3917 15.7738 25.3002L23.7738 17.3002C23.9569 17.1171 23.9569 16.8203 23.7738 16.6373C23.5908 16.4542 23.294 16.4542 23.111 16.6373L15.111 24.6373C14.8121 24.9159 15.0414 25.4517 15.4424 25.4375Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M16.4414 20.5C17.5614 20.5 18.4727 19.5887 18.4727 18.4687C18.4727 17.3487 17.5614 16.4375 16.4414 16.4375H16.3789C15.2589 16.4375 14.3477 17.3487 14.3477 18.4687C14.3477 19.5887 15.2589 20.5 16.3789 20.5H16.4414ZM15.2852 18.4687C15.2852 17.8657 15.7758 17.375 16.3789 17.375H16.4414C17.0445 17.375 17.5352 17.8657 17.5352 18.4687C17.5352 19.0718 17.0445 19.5625 16.4414 19.5625H16.3789C15.7758 19.5625 15.2852 19.0718 15.2852 18.4687Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M22.5039 25.4375H22.5664C23.6864 25.4375 24.5977 24.5262 24.5977 23.4062C24.5977 22.2862 23.6864 21.375 22.5664 21.375H22.5039C21.3839 21.375 20.4727 22.2862 20.4727 23.4062C20.4727 24.5262 21.3839 25.4375 22.5039 25.4375ZM22.5039 22.3125H22.5664C23.1695 22.3125 23.6602 22.8032 23.6602 23.4062C23.6602 24.0093 23.1695 24.5 22.5664 24.5H22.5039C21.9008 24.5 21.4102 24.0093 21.4102 23.4062C21.4102 22.8032 21.9008 22.3125 22.5039 22.3125Z"
                                                            fill="#00B307"
                                                        />
                                                    </g>
                                                    <defs>
                                                        <clipPath>
                                                            <rect width="32" height="32" fill="white" transform="translate(0 0.5)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </span>
                                            <div class="text__info">
                                                <h5>64% Discount</h5>
                                                <p>Save your 64% money with us</p>
                                            </div>
                                        </div>
                                        <div class="products-video__card-item">
                                            <span class="icon">
                                                <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <g clip-path="url(#clip0)">
                                                        <path
                                                            d="M28.0671 24.7501C28.326 24.7501 28.5359 24.5402 28.5359 24.2813V13.0313C28.5359 12.4718 28.3178 11.8995 27.9219 11.4198L24.4454 7.20769C24.2633 6.987 24.0539 6.801 23.8265 6.65287C23.8405 6.50962 23.8484 6.36494 23.8484 6.21887V0.968872C23.8484 0.709997 23.6385 0.500122 23.3797 0.500122C23.1208 0.500122 22.9109 0.709997 22.9109 0.968872C22.9109 0.968872 22.91 6.26356 22.9096 6.28593C22.7762 6.26231 22.6409 6.25012 22.5047 6.25012H16.4422C16.0154 6.25012 15.597 6.36987 15.2224 6.58994C15.2062 6.59575 15.1902 6.60225 15.1744 6.60994L10.605 8.83568C10.0987 9.08962 9.69392 9.51556 9.46498 10.035C9.46248 10.0407 9.46011 10.0464 9.45786 10.0521L7.56861 14.8441C7.47367 15.085 7.59192 15.3572 7.83279 15.4522C7.88923 15.4744 7.94736 15.4849 8.00461 15.4849C8.19148 15.4849 8.36811 15.3724 8.44079 15.188L10.3264 10.4052C10.4682 10.0884 10.7161 9.82887 11.0204 9.67612L13.4347 8.50019L11.0249 11.4199C10.6641 11.857 10.4734 12.4143 10.4734 13.0314V29.2189C10.4734 29.4074 10.49 29.592 10.52 29.7719L5.68992 27.6316C4.59879 27.1482 4.10429 25.864 4.58779 24.769C4.58986 24.7642 4.59186 24.7594 4.59386 24.7547L7.64904 17.1619C7.74567 16.9217 7.62936 16.6487 7.38917 16.5521C7.14886 16.4554 6.87598 16.5718 6.77929 16.8119L3.72679 24.3976C3.04042 25.9632 3.74942 27.7971 5.31011 28.4886L10.9741 30.9984C10.981 31.0014 10.9881 31.0037 10.9951 31.0064C11.57 31.9046 12.5639 32.5001 13.6922 32.5001H25.2547C27.0333 32.5001 28.5359 30.9974 28.5359 29.2188V26.4688C28.5359 26.2099 28.326 26.0001 28.0672 26.0001C27.8083 26.0001 27.5984 26.2099 27.5984 26.4688V29.2188C27.5984 30.4893 26.5251 31.5626 25.2547 31.5626H13.6922C12.4343 31.5626 11.4109 30.5112 11.4109 29.2188V13.0313C11.4109 12.6289 11.5243 12.2875 11.748 12.0166L15.2244 7.80444C15.548 7.41244 15.9919 7.18756 16.4422 7.18756H22.5047C22.593 7.18756 22.681 7.1965 22.7679 7.21337C22.4745 8.21406 21.7476 9.04906 20.766 9.4675C20.5094 9.03819 20.0401 8.75006 19.5046 8.75006C18.6947 8.75006 18.0359 9.40894 18.0359 10.2188C18.0359 11.0287 18.6947 11.6876 19.5046 11.6876C20.2535 11.6876 20.8729 11.1239 20.962 10.3986C22.2244 9.92112 23.179 8.90937 23.6044 7.67444C23.6452 7.7155 23.6847 7.75869 23.7224 7.80444L27.1989 12.0166C27.4565 12.3287 27.5984 12.6891 27.5984 13.0314V24.2814C27.5984 24.5402 27.8082 24.7501 28.0671 24.7501ZM19.5046 10.7501C19.2117 10.7501 18.9734 10.5117 18.9734 10.2188C18.9734 9.92587 19.2117 9.68756 19.5046 9.68756C19.7975 9.68756 20.0359 9.92587 20.0359 10.2188C20.0359 10.5117 19.7975 10.7501 19.5046 10.7501Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M15.4424 25.4375C15.5623 25.4375 15.6823 25.3917 15.7738 25.3002L23.7738 17.3002C23.9569 17.1171 23.9569 16.8203 23.7738 16.6373C23.5908 16.4542 23.294 16.4542 23.111 16.6373L15.111 24.6373C14.8121 24.9159 15.0414 25.4517 15.4424 25.4375Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M16.4414 20.5C17.5614 20.5 18.4727 19.5887 18.4727 18.4687C18.4727 17.3487 17.5614 16.4375 16.4414 16.4375H16.3789C15.2589 16.4375 14.3477 17.3487 14.3477 18.4687C14.3477 19.5887 15.2589 20.5 16.3789 20.5H16.4414ZM15.2852 18.4687C15.2852 17.8657 15.7758 17.375 16.3789 17.375H16.4414C17.0445 17.375 17.5352 17.8657 17.5352 18.4687C17.5352 19.0718 17.0445 19.5625 16.4414 19.5625H16.3789C15.7758 19.5625 15.2852 19.0718 15.2852 18.4687Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M22.5039 25.4375H22.5664C23.6864 25.4375 24.5977 24.5262 24.5977 23.4062C24.5977 22.2862 23.6864 21.375 22.5664 21.375H22.5039C21.3839 21.375 20.4727 22.2862 20.4727 23.4062C20.4727 24.5262 21.3839 25.4375 22.5039 25.4375ZM22.5039 22.3125H22.5664C23.1695 22.3125 23.6602 22.8032 23.6602 23.4062C23.6602 24.0093 23.1695 24.5 22.5664 24.5H22.5039C21.9008 24.5 21.4102 24.0093 21.4102 23.4062C21.4102 22.8032 21.9008 22.3125 22.5039 22.3125Z"
                                                            fill="#00B307"
                                                        />
                                                    </g>
                                                    <defs>
                                                        <clipPath>
                                                            <rect width="32" height="32" fill="white" transform="translate(0 0.5)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </span>
                                            <div class="text__info">
                                                <h5>100% Organic</h5>
                                                <p>100% Organic Vegetables</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Additional Information -->
                        <div class="tab-pane fade" id="pills-information" role="tabpanel" aria-labelledby="pills-information-tab">
                            <div class="row products-tab__information">
                                <div class="col-lg-7 order-lg-0 order-2">
                                    <ul class="products-tab__information-list">
                                        <li>
                                            <h5 class="title">Weight:</h5>
                                            <p class="title-description">03</p>
                                        </li>
                                        <li>
                                            <h5 class="title">Color:</h5>
                                            <p class="title-description">Green</p>
                                        </li>
                                        <li>
                                            <h5 class="title">Type:</h5>
                                            <p class="title-description">Organic</p>
                                        </li>
                                        <li>
                                            <h5 class="title">Category:</h5>
                                            <p class="title-description">Vegetables</p>
                                        </li>
                                        <li>
                                            <h5 class="title">Stock Status:</h5>
                                            <p class="title-description">Available <span>(5,413)</span></p>
                                        </li>
                                        <li>
                                            <h5 class="title">Tags:</h5>
                                            <div class="title-description title-description__tags">
                                                <a href="#" class="title-description__tags-item">
                                                    Vegetables,
                                                </a>
                                                <a href="#" class="title-description__tags-item">
                                                    Healthy,
                                                </a>
                                                <a href="#" class="title-description__tags-item">
                                                    Chinese,
                                                </a>
                                                <a href="#" class="title-description__tags-item">
                                                    Cabbage,
                                                </a>
                                                <a href="#" class="title-description__tags-item">
                                                    Green Cabbage,
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-5 order-lg-0 order-1">
                                    <div class="products-video">
                                        <img src="src/images/members/img-10.png" alt="img-src" />
                                        <a href="https://youtu.be/JkaxUblCGz0" class="play-icon venobox" data-autoplay="true" data-vbtype="video">
                                            <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M0 0V18L14 9L0 0Z" fill="currentColor" />
                                            </svg>
                                        </a>
                                    </div>
                                    <div class="products-video__card">
                                        <div class="products-video__card-item">
                                            <span class="icon">
                                                <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <g clip-path="url(#clip0)">
                                                        <path
                                                            d="M28.0671 24.7501C28.326 24.7501 28.5359 24.5402 28.5359 24.2813V13.0313C28.5359 12.4718 28.3178 11.8995 27.9219 11.4198L24.4454 7.20769C24.2633 6.987 24.0539 6.801 23.8265 6.65287C23.8405 6.50962 23.8484 6.36494 23.8484 6.21887V0.968872C23.8484 0.709997 23.6385 0.500122 23.3797 0.500122C23.1208 0.500122 22.9109 0.709997 22.9109 0.968872C22.9109 0.968872 22.91 6.26356 22.9096 6.28593C22.7762 6.26231 22.6409 6.25012 22.5047 6.25012H16.4422C16.0154 6.25012 15.597 6.36987 15.2224 6.58994C15.2062 6.59575 15.1902 6.60225 15.1744 6.60994L10.605 8.83568C10.0987 9.08962 9.69392 9.51556 9.46498 10.035C9.46248 10.0407 9.46011 10.0464 9.45786 10.0521L7.56861 14.8441C7.47367 15.085 7.59192 15.3572 7.83279 15.4522C7.88923 15.4744 7.94736 15.4849 8.00461 15.4849C8.19148 15.4849 8.36811 15.3724 8.44079 15.188L10.3264 10.4052C10.4682 10.0884 10.7161 9.82887 11.0204 9.67612L13.4347 8.50019L11.0249 11.4199C10.6641 11.857 10.4734 12.4143 10.4734 13.0314V29.2189C10.4734 29.4074 10.49 29.592 10.52 29.7719L5.68992 27.6316C4.59879 27.1482 4.10429 25.864 4.58779 24.769C4.58986 24.7642 4.59186 24.7594 4.59386 24.7547L7.64904 17.1619C7.74567 16.9217 7.62936 16.6487 7.38917 16.5521C7.14886 16.4554 6.87598 16.5718 6.77929 16.8119L3.72679 24.3976C3.04042 25.9632 3.74942 27.7971 5.31011 28.4886L10.9741 30.9984C10.981 31.0014 10.9881 31.0037 10.9951 31.0064C11.57 31.9046 12.5639 32.5001 13.6922 32.5001H25.2547C27.0333 32.5001 28.5359 30.9974 28.5359 29.2188V26.4688C28.5359 26.2099 28.326 26.0001 28.0672 26.0001C27.8083 26.0001 27.5984 26.2099 27.5984 26.4688V29.2188C27.5984 30.4893 26.5251 31.5626 25.2547 31.5626H13.6922C12.4343 31.5626 11.4109 30.5112 11.4109 29.2188V13.0313C11.4109 12.6289 11.5243 12.2875 11.748 12.0166L15.2244 7.80444C15.548 7.41244 15.9919 7.18756 16.4422 7.18756H22.5047C22.593 7.18756 22.681 7.1965 22.7679 7.21337C22.4745 8.21406 21.7476 9.04906 20.766 9.4675C20.5094 9.03819 20.0401 8.75006 19.5046 8.75006C18.6947 8.75006 18.0359 9.40894 18.0359 10.2188C18.0359 11.0287 18.6947 11.6876 19.5046 11.6876C20.2535 11.6876 20.8729 11.1239 20.962 10.3986C22.2244 9.92112 23.179 8.90937 23.6044 7.67444C23.6452 7.7155 23.6847 7.75869 23.7224 7.80444L27.1989 12.0166C27.4565 12.3287 27.5984 12.6891 27.5984 13.0314V24.2814C27.5984 24.5402 27.8082 24.7501 28.0671 24.7501ZM19.5046 10.7501C19.2117 10.7501 18.9734 10.5117 18.9734 10.2188C18.9734 9.92587 19.2117 9.68756 19.5046 9.68756C19.7975 9.68756 20.0359 9.92587 20.0359 10.2188C20.0359 10.5117 19.7975 10.7501 19.5046 10.7501Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M15.4424 25.4375C15.5623 25.4375 15.6823 25.3917 15.7738 25.3002L23.7738 17.3002C23.9569 17.1171 23.9569 16.8203 23.7738 16.6373C23.5908 16.4542 23.294 16.4542 23.111 16.6373L15.111 24.6373C14.8121 24.9159 15.0414 25.4517 15.4424 25.4375Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M16.4414 20.5C17.5614 20.5 18.4727 19.5887 18.4727 18.4687C18.4727 17.3487 17.5614 16.4375 16.4414 16.4375H16.3789C15.2589 16.4375 14.3477 17.3487 14.3477 18.4687C14.3477 19.5887 15.2589 20.5 16.3789 20.5H16.4414ZM15.2852 18.4687C15.2852 17.8657 15.7758 17.375 16.3789 17.375H16.4414C17.0445 17.375 17.5352 17.8657 17.5352 18.4687C17.5352 19.0718 17.0445 19.5625 16.4414 19.5625H16.3789C15.7758 19.5625 15.2852 19.0718 15.2852 18.4687Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M22.5039 25.4375H22.5664C23.6864 25.4375 24.5977 24.5262 24.5977 23.4062C24.5977 22.2862 23.6864 21.375 22.5664 21.375H22.5039C21.3839 21.375 20.4727 22.2862 20.4727 23.4062C20.4727 24.5262 21.3839 25.4375 22.5039 25.4375ZM22.5039 22.3125H22.5664C23.1695 22.3125 23.6602 22.8032 23.6602 23.4062C23.6602 24.0093 23.1695 24.5 22.5664 24.5H22.5039C21.9008 24.5 21.4102 24.0093 21.4102 23.4062C21.4102 22.8032 21.9008 22.3125 22.5039 22.3125Z"
                                                            fill="#00B307"
                                                        />
                                                    </g>
                                                    <defs>
                                                        <clipPath>
                                                            <rect width="32" height="32" fill="white" transform="translate(0 0.5)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </span>
                                            <div class="text__info">
                                                <h5>64% Discount</h5>
                                                <p>Save your 64% money with us</p>
                                            </div>
                                        </div>
                                        <div class="products-video__card-item">
                                            <span class="icon">
                                                <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <g clip-path="url(#clip0)">
                                                        <path
                                                            d="M28.0671 24.7501C28.326 24.7501 28.5359 24.5402 28.5359 24.2813V13.0313C28.5359 12.4718 28.3178 11.8995 27.9219 11.4198L24.4454 7.20769C24.2633 6.987 24.0539 6.801 23.8265 6.65287C23.8405 6.50962 23.8484 6.36494 23.8484 6.21887V0.968872C23.8484 0.709997 23.6385 0.500122 23.3797 0.500122C23.1208 0.500122 22.9109 0.709997 22.9109 0.968872C22.9109 0.968872 22.91 6.26356 22.9096 6.28593C22.7762 6.26231 22.6409 6.25012 22.5047 6.25012H16.4422C16.0154 6.25012 15.597 6.36987 15.2224 6.58994C15.2062 6.59575 15.1902 6.60225 15.1744 6.60994L10.605 8.83568C10.0987 9.08962 9.69392 9.51556 9.46498 10.035C9.46248 10.0407 9.46011 10.0464 9.45786 10.0521L7.56861 14.8441C7.47367 15.085 7.59192 15.3572 7.83279 15.4522C7.88923 15.4744 7.94736 15.4849 8.00461 15.4849C8.19148 15.4849 8.36811 15.3724 8.44079 15.188L10.3264 10.4052C10.4682 10.0884 10.7161 9.82887 11.0204 9.67612L13.4347 8.50019L11.0249 11.4199C10.6641 11.857 10.4734 12.4143 10.4734 13.0314V29.2189C10.4734 29.4074 10.49 29.592 10.52 29.7719L5.68992 27.6316C4.59879 27.1482 4.10429 25.864 4.58779 24.769C4.58986 24.7642 4.59186 24.7594 4.59386 24.7547L7.64904 17.1619C7.74567 16.9217 7.62936 16.6487 7.38917 16.5521C7.14886 16.4554 6.87598 16.5718 6.77929 16.8119L3.72679 24.3976C3.04042 25.9632 3.74942 27.7971 5.31011 28.4886L10.9741 30.9984C10.981 31.0014 10.9881 31.0037 10.9951 31.0064C11.57 31.9046 12.5639 32.5001 13.6922 32.5001H25.2547C27.0333 32.5001 28.5359 30.9974 28.5359 29.2188V26.4688C28.5359 26.2099 28.326 26.0001 28.0672 26.0001C27.8083 26.0001 27.5984 26.2099 27.5984 26.4688V29.2188C27.5984 30.4893 26.5251 31.5626 25.2547 31.5626H13.6922C12.4343 31.5626 11.4109 30.5112 11.4109 29.2188V13.0313C11.4109 12.6289 11.5243 12.2875 11.748 12.0166L15.2244 7.80444C15.548 7.41244 15.9919 7.18756 16.4422 7.18756H22.5047C22.593 7.18756 22.681 7.1965 22.7679 7.21337C22.4745 8.21406 21.7476 9.04906 20.766 9.4675C20.5094 9.03819 20.0401 8.75006 19.5046 8.75006C18.6947 8.75006 18.0359 9.40894 18.0359 10.2188C18.0359 11.0287 18.6947 11.6876 19.5046 11.6876C20.2535 11.6876 20.8729 11.1239 20.962 10.3986C22.2244 9.92112 23.179 8.90937 23.6044 7.67444C23.6452 7.7155 23.6847 7.75869 23.7224 7.80444L27.1989 12.0166C27.4565 12.3287 27.5984 12.6891 27.5984 13.0314V24.2814C27.5984 24.5402 27.8082 24.7501 28.0671 24.7501ZM19.5046 10.7501C19.2117 10.7501 18.9734 10.5117 18.9734 10.2188C18.9734 9.92587 19.2117 9.68756 19.5046 9.68756C19.7975 9.68756 20.0359 9.92587 20.0359 10.2188C20.0359 10.5117 19.7975 10.7501 19.5046 10.7501Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M15.4424 25.4375C15.5623 25.4375 15.6823 25.3917 15.7738 25.3002L23.7738 17.3002C23.9569 17.1171 23.9569 16.8203 23.7738 16.6373C23.5908 16.4542 23.294 16.4542 23.111 16.6373L15.111 24.6373C14.8121 24.9159 15.0414 25.4517 15.4424 25.4375Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M16.4414 20.5C17.5614 20.5 18.4727 19.5887 18.4727 18.4687C18.4727 17.3487 17.5614 16.4375 16.4414 16.4375H16.3789C15.2589 16.4375 14.3477 17.3487 14.3477 18.4687C14.3477 19.5887 15.2589 20.5 16.3789 20.5H16.4414ZM15.2852 18.4687C15.2852 17.8657 15.7758 17.375 16.3789 17.375H16.4414C17.0445 17.375 17.5352 17.8657 17.5352 18.4687C17.5352 19.0718 17.0445 19.5625 16.4414 19.5625H16.3789C15.7758 19.5625 15.2852 19.0718 15.2852 18.4687Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M22.5039 25.4375H22.5664C23.6864 25.4375 24.5977 24.5262 24.5977 23.4062C24.5977 22.2862 23.6864 21.375 22.5664 21.375H22.5039C21.3839 21.375 20.4727 22.2862 20.4727 23.4062C20.4727 24.5262 21.3839 25.4375 22.5039 25.4375ZM22.5039 22.3125H22.5664C23.1695 22.3125 23.6602 22.8032 23.6602 23.4062C23.6602 24.0093 23.1695 24.5 22.5664 24.5H22.5039C21.9008 24.5 21.4102 24.0093 21.4102 23.4062C21.4102 22.8032 21.9008 22.3125 22.5039 22.3125Z"
                                                            fill="#00B307"
                                                        />
                                                    </g>
                                                    <defs>
                                                        <clipPath>
                                                            <rect width="32" height="32" fill="white" transform="translate(0 0.5)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </span>
                                            <div class="text__info">
                                                <h5>100% Organic</h5>
                                                <p>100% Organic Vegetables</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--  Customer Feedback  -->
                        <div class="tab-pane fade" id="pills-customer" role="tabpanel" aria-labelledby="pills-customer-tab">
                            <div class="row products-tab__feedback">
                                <div class="col-lg-7 order-lg-0 order-2">
                                    <div class="feedback">
                                        <div class="products-tab__feedback-content">
                                            <div class="products-tab__feedback-content-top">
                                                <div class="user-details">
                                                    <div class="user-details__img">
                                                        <img src="src/images/user/img-02.png" alt="user-img" />
                                                    </div>
                                                    <div class="user-details__info">
                                                        <h2 class="user-name">Jane Cooper</h2>
                                                        <ul class="user-details__rating">
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="user-published__info">
                                                    <p>2 min ago</p>
                                                </div>
                                            </div>
                                            <p class="products-tab__feedback-comments">
                                                Duis at ullamcorper nulla, eu dictum eros.
                                            </p>
                                        </div>
                                        <div class="products-tab__feedback-content">
                                            <div class="products-tab__feedback-content-top">
                                                <div class="user-details">
                                                    <div class="user-details__img">
                                                        <img src="src/images/user/img-01.png" alt="user-img" />
                                                    </div>
                                                    <div class="user-details__info">
                                                        <h2 class="user-name">Kristin Watson</h2>
                                                        <ul class="user-details__rating">
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="user-published__info">
                                                    <p>30 Apr, 2021</p>
                                                </div>
                                            </div>
                                            <p class="products-tab__feedback-comments">
                                                Keep the soil evenly moist for the healthiest growth. If the sun gets too hot, Chinese cabbage tends to "bolt" or go to seed; in long periods of heat, some kind of shade may be helpful. Watch
                                                out for snails, as they will harm the plants.
                                            </p>
                                        </div>
                                        <div class="products-tab__feedback-content">
                                            <div class="products-tab__feedback-content-top">
                                                <div class="user-details">
                                                    <div class="user-details__img">
                                                        <img src="src/images/user/img-03.png" alt="user-img" />
                                                    </div>
                                                    <div class="user-details__info">
                                                        <h2 class="user-name">Jacob Jones</h2>
                                                        <ul class="user-details__rating">
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="user-published__info">
                                                    <p>2 min ago</p>
                                                </div>
                                            </div>
                                            <p class="products-tab__feedback-comments">
                                                Vivamus eget euismod magna. Nam sed lacinia nibh, et lacinia lacus.
                                            </p>
                                        </div>
                                        <div class="products-tab__feedback-content">
                                            <div class="products-tab__feedback-content-top">
                                                <div class="user-details">
                                                    <div class="user-details__img">
                                                        <img src="src/images/user/img-04.png" alt="user-img" />
                                                    </div>
                                                    <div class="user-details__info">
                                                        <h2 class="user-name">Ralph Edwards</h2>
                                                        <ul class="user-details__rating">
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                            <li>
                                                                <span class="icon">
                                                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                        <path
                                                                            d="M8.27563 11.9209L11.4281 13.9179C11.8311 14.1729 12.3311 13.7934 12.2116 13.3229L11.3011 9.74042C11.2754 9.64063 11.2784 9.53561 11.3097 9.43743C11.341 9.33925 11.3994 9.2519 11.4781 9.18542L14.3051 6.83292C14.6761 6.52392 14.4851 5.90742 14.0076 5.87642L10.3161 5.63642C10.2167 5.62937 10.1214 5.59424 10.0412 5.53511C9.961 5.47598 9.89925 5.39528 9.86313 5.30242L8.48613 1.83542C8.44864 1.73689 8.38208 1.65209 8.29528 1.59225C8.20849 1.53241 8.10555 1.50037 8.00013 1.50037C7.89471 1.50037 7.79177 1.53241 7.70498 1.59225C7.61818 1.65209 7.55163 1.73689 7.51413 1.83542L6.13713 5.30242C6.10109 5.39538 6.03937 5.47618 5.95916 5.5354C5.87896 5.59462 5.78358 5.62983 5.68413 5.63692L1.99263 5.87692C1.51563 5.90742 1.32363 6.52392 1.69513 6.83292L4.52213 9.18592C4.60079 9.25236 4.65911 9.33962 4.69042 9.4377C4.72173 9.53578 4.72475 9.64071 4.69913 9.74042L3.85513 13.0629C3.71163 13.6274 4.31213 14.0829 4.79513 13.7764L7.72513 11.9209C7.80748 11.8686 7.90305 11.8408 8.00063 11.8408C8.09822 11.8408 8.19378 11.8686 8.27613 11.9209H8.27563Z"
                                                                            fill="#FF8A00"
                                                                        />
                                                                    </svg>
                                                                </span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="user-published__info">
                                                    <p>2 min ago</p>
                                                </div>
                                            </div>
                                            <p class="products-tab__feedback-comments">
                                                200+ Canton Pak Choi Bok Choy Chinese Cabbage Seeds Heirloom Non-GMO Productive Brassica rapa VAR. chinensis, a.k.a. Canton's Choice, Bok Choi, from USA
                                            </p>
                                        </div>

                                        <form action="#">
                                            <button class="button button--md button--disable feedback__loadbtn">
                                                Load more
                                            </button>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-lg-5 order-lg-0 order-1">
                                    <div class="products-video">
                                        <img src="src/images/members/img-10.png" alt="img-src" />
                                        <a href="https://youtu.be/JkaxUblCGz0" class="play-icon venobox" data-autoplay="true" data-vbtype="video">
                                            <svg width="14" height="18" viewBox="0 0 14 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M0 0V18L14 9L0 0Z" fill="currentColor" />
                                            </svg>
                                        </a>
                                    </div>
                                    <div class="products-video__card">
                                        <div class="products-video__card-item">
                                            <span class="icon">
                                                <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <g clip-path="url(#clip0)">
                                                        <path
                                                            d="M28.0671 24.7501C28.326 24.7501 28.5359 24.5402 28.5359 24.2813V13.0313C28.5359 12.4718 28.3178 11.8995 27.9219 11.4198L24.4454 7.20769C24.2633 6.987 24.0539 6.801 23.8265 6.65287C23.8405 6.50962 23.8484 6.36494 23.8484 6.21887V0.968872C23.8484 0.709997 23.6385 0.500122 23.3797 0.500122C23.1208 0.500122 22.9109 0.709997 22.9109 0.968872C22.9109 0.968872 22.91 6.26356 22.9096 6.28593C22.7762 6.26231 22.6409 6.25012 22.5047 6.25012H16.4422C16.0154 6.25012 15.597 6.36987 15.2224 6.58994C15.2062 6.59575 15.1902 6.60225 15.1744 6.60994L10.605 8.83568C10.0987 9.08962 9.69392 9.51556 9.46498 10.035C9.46248 10.0407 9.46011 10.0464 9.45786 10.0521L7.56861 14.8441C7.47367 15.085 7.59192 15.3572 7.83279 15.4522C7.88923 15.4744 7.94736 15.4849 8.00461 15.4849C8.19148 15.4849 8.36811 15.3724 8.44079 15.188L10.3264 10.4052C10.4682 10.0884 10.7161 9.82887 11.0204 9.67612L13.4347 8.50019L11.0249 11.4199C10.6641 11.857 10.4734 12.4143 10.4734 13.0314V29.2189C10.4734 29.4074 10.49 29.592 10.52 29.7719L5.68992 27.6316C4.59879 27.1482 4.10429 25.864 4.58779 24.769C4.58986 24.7642 4.59186 24.7594 4.59386 24.7547L7.64904 17.1619C7.74567 16.9217 7.62936 16.6487 7.38917 16.5521C7.14886 16.4554 6.87598 16.5718 6.77929 16.8119L3.72679 24.3976C3.04042 25.9632 3.74942 27.7971 5.31011 28.4886L10.9741 30.9984C10.981 31.0014 10.9881 31.0037 10.9951 31.0064C11.57 31.9046 12.5639 32.5001 13.6922 32.5001H25.2547C27.0333 32.5001 28.5359 30.9974 28.5359 29.2188V26.4688C28.5359 26.2099 28.326 26.0001 28.0672 26.0001C27.8083 26.0001 27.5984 26.2099 27.5984 26.4688V29.2188C27.5984 30.4893 26.5251 31.5626 25.2547 31.5626H13.6922C12.4343 31.5626 11.4109 30.5112 11.4109 29.2188V13.0313C11.4109 12.6289 11.5243 12.2875 11.748 12.0166L15.2244 7.80444C15.548 7.41244 15.9919 7.18756 16.4422 7.18756H22.5047C22.593 7.18756 22.681 7.1965 22.7679 7.21337C22.4745 8.21406 21.7476 9.04906 20.766 9.4675C20.5094 9.03819 20.0401 8.75006 19.5046 8.75006C18.6947 8.75006 18.0359 9.40894 18.0359 10.2188C18.0359 11.0287 18.6947 11.6876 19.5046 11.6876C20.2535 11.6876 20.8729 11.1239 20.962 10.3986C22.2244 9.92112 23.179 8.90937 23.6044 7.67444C23.6452 7.7155 23.6847 7.75869 23.7224 7.80444L27.1989 12.0166C27.4565 12.3287 27.5984 12.6891 27.5984 13.0314V24.2814C27.5984 24.5402 27.8082 24.7501 28.0671 24.7501ZM19.5046 10.7501C19.2117 10.7501 18.9734 10.5117 18.9734 10.2188C18.9734 9.92587 19.2117 9.68756 19.5046 9.68756C19.7975 9.68756 20.0359 9.92587 20.0359 10.2188C20.0359 10.5117 19.7975 10.7501 19.5046 10.7501Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M15.4424 25.4375C15.5623 25.4375 15.6823 25.3917 15.7738 25.3002L23.7738 17.3002C23.9569 17.1171 23.9569 16.8203 23.7738 16.6373C23.5908 16.4542 23.294 16.4542 23.111 16.6373L15.111 24.6373C14.8121 24.9159 15.0414 25.4517 15.4424 25.4375Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M16.4414 20.5C17.5614 20.5 18.4727 19.5887 18.4727 18.4687C18.4727 17.3487 17.5614 16.4375 16.4414 16.4375H16.3789C15.2589 16.4375 14.3477 17.3487 14.3477 18.4687C14.3477 19.5887 15.2589 20.5 16.3789 20.5H16.4414ZM15.2852 18.4687C15.2852 17.8657 15.7758 17.375 16.3789 17.375H16.4414C17.0445 17.375 17.5352 17.8657 17.5352 18.4687C17.5352 19.0718 17.0445 19.5625 16.4414 19.5625H16.3789C15.7758 19.5625 15.2852 19.0718 15.2852 18.4687Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M22.5039 25.4375H22.5664C23.6864 25.4375 24.5977 24.5262 24.5977 23.4062C24.5977 22.2862 23.6864 21.375 22.5664 21.375H22.5039C21.3839 21.375 20.4727 22.2862 20.4727 23.4062C20.4727 24.5262 21.3839 25.4375 22.5039 25.4375ZM22.5039 22.3125H22.5664C23.1695 22.3125 23.6602 22.8032 23.6602 23.4062C23.6602 24.0093 23.1695 24.5 22.5664 24.5H22.5039C21.9008 24.5 21.4102 24.0093 21.4102 23.4062C21.4102 22.8032 21.9008 22.3125 22.5039 22.3125Z"
                                                            fill="#00B307"
                                                        />
                                                    </g>
                                                    <defs>
                                                        <clipPath>
                                                            <rect width="32" height="32" fill="white" transform="translate(0 0.5)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </span>
                                            <div class="text__info">
                                                <h5>64% Discount</h5>
                                                <p>Save your 64% money with us</p>
                                            </div>
                                        </div>
                                        <div class="products-video__card-item">
                                            <span class="icon">
                                                <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <g clip-path="url(#clip0)">
                                                        <path
                                                            d="M28.0671 24.7501C28.326 24.7501 28.5359 24.5402 28.5359 24.2813V13.0313C28.5359 12.4718 28.3178 11.8995 27.9219 11.4198L24.4454 7.20769C24.2633 6.987 24.0539 6.801 23.8265 6.65287C23.8405 6.50962 23.8484 6.36494 23.8484 6.21887V0.968872C23.8484 0.709997 23.6385 0.500122 23.3797 0.500122C23.1208 0.500122 22.9109 0.709997 22.9109 0.968872C22.9109 0.968872 22.91 6.26356 22.9096 6.28593C22.7762 6.26231 22.6409 6.25012 22.5047 6.25012H16.4422C16.0154 6.25012 15.597 6.36987 15.2224 6.58994C15.2062 6.59575 15.1902 6.60225 15.1744 6.60994L10.605 8.83568C10.0987 9.08962 9.69392 9.51556 9.46498 10.035C9.46248 10.0407 9.46011 10.0464 9.45786 10.0521L7.56861 14.8441C7.47367 15.085 7.59192 15.3572 7.83279 15.4522C7.88923 15.4744 7.94736 15.4849 8.00461 15.4849C8.19148 15.4849 8.36811 15.3724 8.44079 15.188L10.3264 10.4052C10.4682 10.0884 10.7161 9.82887 11.0204 9.67612L13.4347 8.50019L11.0249 11.4199C10.6641 11.857 10.4734 12.4143 10.4734 13.0314V29.2189C10.4734 29.4074 10.49 29.592 10.52 29.7719L5.68992 27.6316C4.59879 27.1482 4.10429 25.864 4.58779 24.769C4.58986 24.7642 4.59186 24.7594 4.59386 24.7547L7.64904 17.1619C7.74567 16.9217 7.62936 16.6487 7.38917 16.5521C7.14886 16.4554 6.87598 16.5718 6.77929 16.8119L3.72679 24.3976C3.04042 25.9632 3.74942 27.7971 5.31011 28.4886L10.9741 30.9984C10.981 31.0014 10.9881 31.0037 10.9951 31.0064C11.57 31.9046 12.5639 32.5001 13.6922 32.5001H25.2547C27.0333 32.5001 28.5359 30.9974 28.5359 29.2188V26.4688C28.5359 26.2099 28.326 26.0001 28.0672 26.0001C27.8083 26.0001 27.5984 26.2099 27.5984 26.4688V29.2188C27.5984 30.4893 26.5251 31.5626 25.2547 31.5626H13.6922C12.4343 31.5626 11.4109 30.5112 11.4109 29.2188V13.0313C11.4109 12.6289 11.5243 12.2875 11.748 12.0166L15.2244 7.80444C15.548 7.41244 15.9919 7.18756 16.4422 7.18756H22.5047C22.593 7.18756 22.681 7.1965 22.7679 7.21337C22.4745 8.21406 21.7476 9.04906 20.766 9.4675C20.5094 9.03819 20.0401 8.75006 19.5046 8.75006C18.6947 8.75006 18.0359 9.40894 18.0359 10.2188C18.0359 11.0287 18.6947 11.6876 19.5046 11.6876C20.2535 11.6876 20.8729 11.1239 20.962 10.3986C22.2244 9.92112 23.179 8.90937 23.6044 7.67444C23.6452 7.7155 23.6847 7.75869 23.7224 7.80444L27.1989 12.0166C27.4565 12.3287 27.5984 12.6891 27.5984 13.0314V24.2814C27.5984 24.5402 27.8082 24.7501 28.0671 24.7501ZM19.5046 10.7501C19.2117 10.7501 18.9734 10.5117 18.9734 10.2188C18.9734 9.92587 19.2117 9.68756 19.5046 9.68756C19.7975 9.68756 20.0359 9.92587 20.0359 10.2188C20.0359 10.5117 19.7975 10.7501 19.5046 10.7501Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M15.4424 25.4375C15.5623 25.4375 15.6823 25.3917 15.7738 25.3002L23.7738 17.3002C23.9569 17.1171 23.9569 16.8203 23.7738 16.6373C23.5908 16.4542 23.294 16.4542 23.111 16.6373L15.111 24.6373C14.8121 24.9159 15.0414 25.4517 15.4424 25.4375Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M16.4414 20.5C17.5614 20.5 18.4727 19.5887 18.4727 18.4687C18.4727 17.3487 17.5614 16.4375 16.4414 16.4375H16.3789C15.2589 16.4375 14.3477 17.3487 14.3477 18.4687C14.3477 19.5887 15.2589 20.5 16.3789 20.5H16.4414ZM15.2852 18.4687C15.2852 17.8657 15.7758 17.375 16.3789 17.375H16.4414C17.0445 17.375 17.5352 17.8657 17.5352 18.4687C17.5352 19.0718 17.0445 19.5625 16.4414 19.5625H16.3789C15.7758 19.5625 15.2852 19.0718 15.2852 18.4687Z"
                                                            fill="#00B307"
                                                        />
                                                        <path
                                                            d="M22.5039 25.4375H22.5664C23.6864 25.4375 24.5977 24.5262 24.5977 23.4062C24.5977 22.2862 23.6864 21.375 22.5664 21.375H22.5039C21.3839 21.375 20.4727 22.2862 20.4727 23.4062C20.4727 24.5262 21.3839 25.4375 22.5039 25.4375ZM22.5039 22.3125H22.5664C23.1695 22.3125 23.6602 22.8032 23.6602 23.4062C23.6602 24.0093 23.1695 24.5 22.5664 24.5H22.5039C21.9008 24.5 21.4102 24.0093 21.4102 23.4062C21.4102 22.8032 21.9008 22.3125 22.5039 22.3125Z"
                                                            fill="#00B307"
                                                        />
                                                    </g>
                                                    <defs>
                                                        <clipPath>
                                                            <rect width="32" height="32" fill="white" transform="translate(0 0.5)" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </span>
                                            <div class="text__info">
                                                <h5>100% Organic</h5>
                                                <p>100% Organic Vegetables</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Products Tabs End  -->

        
        <!-- Related Product Section   end  -->

        <!-- cal-to-action Section Start  -->
        <section class="call-to-action section--gray">
            <div class="container">
                <div class="newsletter newsletter--one">
                    <div class="newsletter__leftcontent">
                        <h2 class="font-body--xxxl-600">Subscribe Our Newsletter</h2>
                        <p class="font-body--md-400">
                            Pellentesque eu nibh eget mauris congue mattis mattis nec tellus. Phasellus imperdiet elit eu magna.
                        </p>
                    </div>
                    <div class="newsletter__rightcontent">
                        <form action="#">
                            <div class="newsletter__input">
                                <input type="text" placeholder="Your Email Address" />
                                <button class="button button--lg" type="submit">
                                    Subscribe
                                </button>
                            </div>
                        </form>
                        <ul class="newsletter__social-icon">
                            <li>
                                <a href="#">
                                    <svg width="10" height="18" viewBox="0 0 10 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M7.99764 2.98875H9.64089V0.12675C9.35739 0.08775 8.38239 0 7.24689 0C4.87764 0 3.25464 1.49025 3.25464 4.22925V6.75H0.640137V9.9495H3.25464V18H6.46014V9.95025H8.96889L9.36714 6.75075H6.45939V4.5465C6.46014 3.62175 6.70914 2.98875 7.99764 2.98875Z"
                                            fill="currentColor"
                                        ></path>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <svg width="18" height="16" viewBox="0 0 18 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M18 2.41888C17.3306 2.7125 16.6174 2.90713 15.8737 3.00163C16.6388 2.54488 17.2226 1.82713 17.4971 0.962C16.7839 1.38725 15.9964 1.68763 15.1571 1.85525C14.4799 1.13413 13.5146 0.6875 12.4616 0.6875C10.4186 0.6875 8.77387 2.34575 8.77387 4.37863C8.77387 4.67113 8.79862 4.95238 8.85938 5.22013C5.7915 5.0705 3.07687 3.60013 1.25325 1.36025C0.934875 1.91263 0.748125 2.54488 0.748125 3.2255C0.748125 4.5035 1.40625 5.63638 2.38725 6.29225C1.79437 6.281 1.21275 6.10888 0.72 5.83775C0.72 5.849 0.72 5.86363 0.72 5.87825C0.72 7.6715 1.99912 9.161 3.6765 9.50413C3.37612 9.58625 3.04875 9.62563 2.709 9.62563C2.47275 9.62563 2.23425 9.61213 2.01038 9.56263C2.4885 11.024 3.84525 12.0984 5.4585 12.1333C4.203 13.1154 2.60888 13.7071 0.883125 13.7071C0.5805 13.7071 0.29025 13.6936 0 13.6565C1.63462 14.7106 3.57188 15.3125 5.661 15.3125C12.4515 15.3125 16.164 9.6875 16.164 4.81175C16.164 4.64863 16.1584 4.49113 16.1505 4.33475C16.8829 3.815 17.4982 3.16588 18 2.41888Z"
                                            fill="currentColor"
                                        ></path>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <svg width="16" height="18" viewBox="0 0 16 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M8.24471 0C3.31136 0 0.687744 3.16139 0.687744 6.60855C0.687744 8.20724 1.58103 10.2008 3.01097 10.8331C3.22811 10.931 3.34624 10.8894 3.39462 10.688C3.43737 10.535 3.62525 9.79807 3.71638 9.45042C3.74451 9.33904 3.72988 9.24229 3.63988 9.13766C3.16511 8.58864 2.78821 7.58847 2.78821 6.65017C2.78821 4.24594 4.69967 1.91146 7.9522 1.91146C10.7648 1.91146 12.7325 3.73854 12.7325 6.35204C12.7325 9.30529 11.1698 11.3484 9.13912 11.3484C8.0152 11.3484 7.17816 10.4663 7.44367 9.37505C7.76431 8.07561 8.39321 6.6783 8.39321 5.74113C8.39321 4.90072 7.91844 4.20544 6.94865 4.20544C5.80447 4.20544 4.87631 5.33837 4.87631 6.85943C4.87631 7.82585 5.21832 8.47838 5.21832 8.47838C5.21832 8.47838 4.08652 13.0506 3.87614 13.9045C3.52062 15.3502 3.92451 17.6914 3.95939 17.8928C3.98077 18.0042 4.10565 18.0391 4.1754 17.9479C4.28678 17.8017 5.65484 15.8497 6.03848 14.4389C6.17799 13.9248 6.75064 11.84 6.75064 11.84C7.12753 12.5207 8.21546 13.0911 9.37426 13.0911C12.8214 13.0911 15.3123 10.0613 15.3123 6.30141C15.2999 2.69675 12.215 0 8.24471 0Z"
                                            fill="currentColor"
                                        ></path>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <svg width="25" height="18" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg">
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
            </div>
        </section>
        <!-- cal-to-action Section end  -->

        <!--Footer Section Start  -->
        <footer class="footer footer--one">
            <div class="container">
                <div class="footer__top">
                    <div class="row">
                        <!-- Brand information-->
                        <div class="col-lg-4">
                            <div class="footer__brand-info">
                                <div class="footer__brand-info-logo">
                                    <img src="src/images/logo-nl-white.png" alt="logo" />
                                </div>
                                <p class="font-body--md-400">
                                    Morbi cursus porttitor enim lobortis molestie. Duis gravida turpis dui, eget bibendum magna congue nec.
                                </p>
                                <div class="footer__brand-info-contact">
                                    <a href="#"><span>(219)555-0114</span></a>
                                    or
                                    <a href="#"><span>Proxy@gmail.com</span></a>
                                </div>
                            </div>
                        </div>
                        <!-- My Account  -->
                        <div class="col-lg-2 col-md-3 col-6">
                            <ul class="footer__navigation">
                                <li class="footer__navigation-title">
                                    <h2 class="font-body--lg-500">My Account</h2>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> My Account </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> order History </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Shoping Cart </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Wishlist </a>
                                </li>
                            </ul>
                        </div>
                        <!-- Helps  -->
                        <div class="col-lg-2 col-md-3 col-6">
                            <ul class="footer__navigation">
                                <li class="footer__navigation-title">
                                    <h2 class="font-body--lg-500">My Helps</h2>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Contact </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> faq </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Terms &amp; Condition </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Privacy Policy </a>
                                </li>
                            </ul>
                        </div>
                        <!-- Proxy -->
                        <div class="col-lg-2 col-md-3 col-6">
                            <ul class="footer__navigation">
                                <li class="footer__navigation-title">
                                    <h2 class="font-body--lg-500">Proxy</h2>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> About </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Shop </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Product </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Track Order </a>
                                </li>
                            </ul>
                        </div>
                        <!-- Categories -->
                        <div class="col-lg-2 col-md-3 col-6">
                            <ul class="footer__navigation">
                                <li class="footer__navigation-title">
                                    <h2 class="font-body--lg-500">Categories</h2>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Fruit &amp; Vegetables </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Meat &amp; Fish </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Bread &amp; Bakery </a>
                                </li>
                                <li class="footer__navigation-link">
                                    <a href="#"> Beauty &amp; Health </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer__bottom">
                    <p class="footer__copyright-text">
                        Shopery eCommerce © 2021. All Rights Reserved
                    </p>
                    <div class="footer__partner d-flex">
                        <a href="#" class="footer__partner-item">
                            <img src="src/images/brand-icon/img-01.png" alt="img" />
                        </a>
                        <a  href="#" class="footer__partner-item">
                            <img src="src/images/brand-icon/img-02.png" alt="img" />
                        </a>
                        <a  href="#" class="footer__partner-item">
                            <img src="src/images/brand-icon/img-03.png" alt="img" />
                        </a>
                        <a  href="#" class="footer__partner-item">
                            <img src="src/images/brand-icon/img-04.png" alt="img" />
                        </a >
                        <a  href="#" class="footer__partner-item">
                            <img src="src/images/brand-icon/img-05.png" alt="img" />
                        </a>
                    </div>
                </div>
            </div>
        </footer>
        <!--Footer Section end  -->
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
        <script src="src/lib/js/swiper-bundle.min.js"></script>
        <script src="src/lib/js/venobox.min.js"></script>
        <script src="src/lib/js/bvselect.js"></script>
        <script src="src/lib/js/bootstrap.bundle.min.js"></script>
        <script src="src/js/main.js"></script>
        
        <!-- Purchase Button -->
        <div class="templatecookie-btn">
            <a href="https://1.envato.market/kjkaBN" target="_blank" class="purchase-btn">
                Purchase Now
                <span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
                    </svg>
                </span>
            </a>
        </div>s

</body>
</html>