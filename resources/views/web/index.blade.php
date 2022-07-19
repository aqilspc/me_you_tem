 @extends('web.header')
 @section('content')
 @include('web.menu')


        <!-- Main Area Start -->
        <main>
            <!-- Banner Area Start -->
            <section class="benner-area black-bg">
                <div class="banner text-center d-flex align-items-center justify-content-center" style="background: url('https://themepure.net/template/kindspa-prv/assets/img/slider/slider-01.png') center center / cover;">
                    <div class="banner-content">
                        <ul>
                        <h1>The Beauty Shop.sply</h1>
                             <a class="theme-btn" href="#pageinfo"><i class="fas fa-home"></i> Enter</a>
                        </ul>
                      
                    </div>
                </div>
            </section>
            <!-- Banner Area End -->

            <!-- Service Archive -->
            @if(Auth::check())
                @if(Auth::user()->role != 'admin')
                <section class="service-archive pt-120 pb-60" id="pageinfo" style="padding-top: 20px;">
                      <h2 align="center">NEW ARRIVALS</h2>
                    <div class="container">

                        <div class="row">
                            @foreach($data as $dt)
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="service-inner mb-50">
                                    <div class="service-img">
                                        <img src="{{$dt->gambar1}}" alt="">
                                    </div>
                                    <div class="service-arch-content text-center">
                                        <div class="service-icon">
                                            <img src="{{$dt->gambar2}}" alt="">
                                        </div>
                                        <h4><a href="#">{{$dt->judul}}</a></h4>
                                        <p> {{mb_strimwidth($dt->isi_1, 0, 125, "")}}</p>
                                        <ul>
                                            <a class="theme-btn" href="{{url('detail/'.$dt->id)}}"><i class="fas fa-eye"></i> Read More</a>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </section>
                @endif
            @else
             <section class="service-archive pt-120 pb-60" id="pageinfo" style="padding-top: 20px;">
                      <h2 align="center">NEW ARRIVALS</h2>
                    <div class="container">

                        <div class="row">
                            @foreach($data as $dt)
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="service-inner mb-50">
                                    <div class="service-img">
                                        <img src="{{$dt->gambar1}}" alt="">
                                    </div>
                                    <div class="service-arch-content text-center">
                                        <div class="service-icon">
                                            <img src="{{$dt->gambar2}}" alt="">
                                        </div>
                                        <h4><a href="#">{{$dt->judul}}</a></h4>
                                        <p> {{mb_strimwidth($dt->isi_1, 0, 125, "")}}</p>
                                        <ul>
                                            <a class="theme-btn" href="{{url('detail/'.$dt->id)}}"><i class="fas fa-eye"></i> Read More</a>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </section>
            @endif
            <!-- Service Archive -->
        </main>
@endsection