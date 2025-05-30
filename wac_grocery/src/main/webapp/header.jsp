<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String emaill = (String) session.getAttribute("uemail");
Integer id = (Integer)session.getAttribute("uid");
%>
<header class="header header--one header--five">
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
                            Store Location: 12/A, Colombo, Sri Lanka, <%= emaill != null ? id : "Guest" %>!
                        </p>
                    </div>
                    <div class="header__top-right">
                        <div class="header__dropdown">
                            <select id="selectbox2" class="header__dropdown-menu">
                                <option value="pt_1">SLR</option>
                                <option value="en_2">USD</option>

                                <option value="ch_4">yan</option>
                                <option value="5">rup</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header__center">
            <div class="container">
                <div class="header__center-content">
                    <ul class="header__navigation-menu">
                        <li class="header__navigation-menu-link active">
                            <a href="fep">
                                Home
                                <span class="drop-icon">
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M3.33332 5.66667L7.99999 10.3333L12.6667 5.66667" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    </svg>
                                </span>
                            </a>
                            
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

                        </li>
                        <li class="header__navigation-menu-link">
                            <a href="fep">
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
                                <li class="header__navigation-drop-menu-link">
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
                            <a href="fep">
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
                            <a href="fep">About us </a>
                        </li>
                        <li class="header__navigation-menu-link">
                            <a href="fep">Contact us</a>
                        </li>
                    </ul>

                    <div class="header__brand">
                        <button class="header__sidebar-btn">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M3 12H21" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                <path d="M3 6H21" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                <path d="M3 18H15" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                            </svg>
                        </button>
                        <a href="index.html">
                            <img src="src/images/Budget.png" alt="brand-logo" />
                        </a>
                    </div>

                    <div class="header__cart header__cart-single">
                        <a href="#" class="header__telephone-number">
                            <span>
                                <svg width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M14.436 2.375C15.9194 2.77396 17.2719 3.55567 18.3581 4.64184C19.4442 5.72801 20.226 7.08051 20.6249 8.56388"
                                        stroke="#1A1A1A"
                                        stroke-width="1.5"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                    ></path>
                                    <path
                                        d="M13.5308 5.75687C14.4206 5.99625 15.2319 6.46521 15.8835 7.11678C16.535 7.76835 17.004 8.57967 17.2434 9.46949"
                                        stroke="#1A1A1A"
                                        stroke-width="1.5"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                    ></path>
                                    <path
                                        d="M7.115 11.6517C8.02238 13.5074 9.5263 15.0049 11.3859 15.9042C11.522 15.9688 11.6727 15.9966 11.8229 15.9851C11.9731 15.9736 12.1178 15.9231 12.2425 15.8386L14.9812 14.0134C15.1022 13.9326 15.2414 13.8833 15.3862 13.8698C15.5311 13.8564 15.677 13.8793 15.8107 13.9364L20.9339 16.1326C21.1079 16.2065 21.2532 16.335 21.3479 16.4987C21.4426 16.6623 21.4815 16.8523 21.4589 17.04C21.2967 18.307 20.6784 19.4714 19.7196 20.3154C18.7608 21.1593 17.5273 21.6249 16.25 21.625C12.3049 21.625 8.52139 20.0578 5.73179 17.2682C2.94218 14.4786 1.375 10.6951 1.375 6.75C1.37512 5.47279 1.84074 4.23941 2.68471 3.28077C3.52867 2.32213 4.6931 1.70396 5.96 1.542C6.14771 1.51936 6.33769 1.55832 6.50134 1.653C6.66499 1.74769 6.79345 1.89298 6.86738 2.067L9.06537 7.1945C9.1219 7.32698 9.14485 7.47137 9.13218 7.61485C9.11951 7.75833 9.07162 7.89647 8.99275 8.017L7.17275 10.7977C7.09015 10.923 7.04141 11.0675 7.03129 11.2171C7.02117 11.3668 7.05001 11.5165 7.115 11.6517V11.6517Z"
                                        stroke="#1A1A1A"
                                        stroke-width="1.5"
                                        stroke-linecap="round"
                                        stroke-linejoin="round"
                                    ></path>
                                </svg>

                                +947011223345
                            </span>
                        </a>

                        <a href="#" class="icon search-icon">
                            <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M14.6667 25.3333C20.5577 25.3333 25.3333 20.5577 25.3333 14.6667C25.3333 8.77563 20.5577 4 14.6667 4C8.77563 4 4 8.77563 4 14.6667C4 20.5577 8.77563 25.3333 14.6667 25.3333Z"
                                    stroke="currentColor"
                                    stroke-width="1.5"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                />
                                <path d="M28.0002 28L22.2002 22.2" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                            </svg>
                        </a>
                        <a href="wishlist.html" class="icon heart-icon">
                            <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M15.999 28.0722C-10.6672 13.3333 7.9995 -2.66666 15.999 7.45075C23.9995 -2.66666 42.6661 13.3333 15.999 28.0722Z" stroke="currentColor" stroke-width="1.5" />
                            </svg>
                        </a>
                        <a href="#" class="icon shopping-bag cart-bag" id="cart-bag" style="display:none;">
                            <svg width="34" height="34" viewBox="0 0 34 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M11.3333 14.1667H7.08333L4.25 29.75H29.75L26.9167 14.1667H22.6667M11.3333 14.1667V9.91667C11.3333 6.78705 13.8704 4.25 17 4.25V4.25C20.1296 4.25 22.6667 6.78705 22.6667 9.91667V14.1667M11.3333 14.1667H22.6667M11.3333 14.1667V18.4167M22.6667 14.1667V18.4167"
                                    stroke="currentColor"
                                    stroke-width="1.5"
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                />
                            </svg>
                            <div class="numb">2</div>
                        </a>
                        <a href="<%= id == null ? "signin.jsp" : "#" %>" class="icon user-icon" >
    <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M16.0003 14.6667C18.9458 14.6667 21.3337 12.2789 21.3337 9.33333C21.3337 6.38781 18.9458 4 16.0003 4C13.0548 4 10.667 6.38781 10.667 9.33333C10.667 12.2789 13.0548 14.6667 16.0003 14.6667Z" stroke="currentColor" stroke-width="1.5"/>
        <path d="M20.0003 18.6666H12.0003C8.31764 18.6666 5.02031 22.0666 7.44297 24.8386C9.09097 26.724 11.8163 28 16.0003 28C20.1843 28 22.9083 26.724 24.5563 24.8386C26.9803 22.0653 23.6816 18.6666 20.0003 18.6666Z" stroke="currentColor" stroke-width="1.5"/>
    </svg>
</a>

<% if (id != null) { %>
<div class="icon user-icon" id="user-menu" style="display: none; position: absolute; right:0; margin-top:100px; background-color: #fff; border: 1px solid #ccc; padding: 10px; box-shadow: 0 2px 8px rgba(0,0,0,0.1); border-radius: 5px; z-index: 100;">
    <ul style="list-style-type: none; margin: 0; padding: 0;">
        <li style="margin-bottom: 10px;"><a href="paylist" style="text-decoration: none; color: #333;">Payment</a></li>
        <li style="margin-bottom: 10px;"><a href="crtitm" style="text-decoration: none; color: #333;">Cart</a></li>
        <li style="margin-bottom: 10px;"><a href="odrlst" style="text-decoration: none; color: #333;">Orders</a></li>
        <li><a href="signin.jsp" style="text-decoration: none; color: #333;">Logout</a></li>
    </ul>
</div>
<script>
    const userIcon = document.querySelector('.icon.user-icon');
    const userMenu = document.getElementById('user-menu');

    // Function to toggle the visibility of the user menu
    function toggleUserMenu() {
        if (userMenu.style.display === 'block') {
            userMenu.style.display = 'none';
        } else {
            userMenu.style.display = 'block';
        }
    }

    // Show or hide the user menu when the user icon is clicked
    userIcon.addEventListener('click', function(event) {
        event.stopPropagation(); // Prevent the click event from bubbling up to the document
        toggleUserMenu();
    });

    // Hide the user menu if clicking outside of it
    document.addEventListener('click', function() {
        userMenu.style.display = 'none';
    });
</script>

<% } %>

                    </div>
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
                                <li class="header__mobile-dropdown-menu-link">
                                    <a href="home-05.html">Home 05</a>
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
                                <li class="header__mobile-dropdown-menu-link">
                                    <a href="product-details.html">Product Details</a>
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
               
            </div>
        </div>
    </header>

</body>
</html>