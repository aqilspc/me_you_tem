 @extends('web.header')
 @section('content')
 @include('web.menu')
     <main>
        <!-- Banner Area Start -->
        <!-- Banner Area End -->

        <!-- Priceing Area Start -->
        <section class="price-area price-fix pt-115 pb-90" style="padding-top: 20px;padding-bottom: 20px;">
            <div class="container">
                <h4 align="center">Admin Area</h4>
                <div class="row">

                    <div class="col-xl-3 col-lg-3 col-md-12">
                        <div class="priceing-box text-center mb-30">
                            <h6>Product</h6>
                            <a class="border-btn" href="{{url('admin_area/product')}}">Manage</a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-12">
                        <div class="priceing-box text-center mb-30">
                            <h6>Home</h6>
                            <a class="border-btn" href="{{url('admin_area/home')}}">Manage</a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-12">
                        <div class="priceing-box text-center mb-30">
                            <h6>Community</h6>
                            <a class="border-btn" href="{{url('admin_area/community')}}">Manage</a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-12">
                        <div class="priceing-box text-center mb-30">
                            <h6>Orders</h6>
                            <a class="border-btn" href="{{url('admin_area/order')}}">Manage</a>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- Priceing Area End -->

    </main>
 @endsection