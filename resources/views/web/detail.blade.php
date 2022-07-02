 @extends('web.header')
 @section('content')
 @include('web.menu')


        <!-- Main Area Start -->
        <main>
            <!-- Banner Area Start -->
            <!-- Banner Area End -->

            <!-- Service Archive -->
                    <section class="service-details pt-120 pb-90" style="padding-top:20px;">
            <h2 align="center">{{$data->judul}}</h2>
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="details-img mb-50">
                            <img src="{{$data->gambar1}}" alt="">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-7">
                        <div class="service-details-content mb-30">
                            
                            <p>L{{$data->isi_1}}</p>

                            <p style="margin-left: 32%;">{{$data->isi_2}}</p>
                           <!--  <a href="#" class="theme-btn">Self Love</a>
                            &nbsp;&nbsp;&nbsp;
                            <a href="#" class="theme-btn">Skin Myths</a> -->
                        </div>
                    </div>
                    <div class="col-xl-5">
                        <div class="service-details-categories mb-30">
                            <!-- <h4>Service Details</h4> -->
                           <img src="{{$data->gambar2}}" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
            <!-- Service Archive -->
        </main>
@endsection