 <!-- Header Area Start -->
        <header>
            <div class="header-area black-bg">
                <div class="container-fluid">
                    <div class="row no-gutters">
                        <div class="col-xl-3 col-lg-2 col-md-4">
                            <div class="logo">
                                <a href="{{url('/')}}"><h3 style="color: white;">The Beauty Shop.sply</h3></a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-10 col-md-8">
                            <div class="main-menu">
                                <nav id="mobile-menu">
                                    <ul>
                                        <li>
                                            <a href="{{url('/')}}">Home</a>
                                        </li>
                                        @guest
                                        <li><a href="{{url('shop')}}">Daftar Produk</a></li>
                                        <li><a href="{{url('login')}}">Login</a></li>
                                        @endauth
                                        @auth
                                        @if(Auth::user()->role=='admin')
                                         <li><a href="{{url('admin_area')}}">Admin Area</a></li>
                                        @else
                                        <li><a href="{{url('about')}}">About</a></li>
                                        <li><a href="{{url('pesan_order_send/0')}}">Community</a></li>
                                        <li><a href="{{url('shop')}}">Shop</a></li>
                                        <li><a href="{{url('my_order')}}">My Order</a></li>
                                        @endif
                                         <li> 
                                            <a onclick="event.preventDefault();
                                               document.getElementById('logout-form').submit();" class="theme-btn" style="cursor: pointer;color: black;">
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">@csrf </form>
                                            logout
                                           </a>
                                        </li>
                                       @endauth
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-3 d-none d-xl-block">
                        </div>
                        <div class="col-12">
                            <div class="mobile-menu"></div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header Area End -->