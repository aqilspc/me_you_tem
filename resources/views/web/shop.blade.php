 @extends('web.header')
 @section('content')
 @include('web.menu')
     <main>
        <!-- Banner Area Start -->
        <!-- Banner Area End -->

        <!-- Priceing Area Start -->
        <section class="price-area price-fix pt-115 pb-90" style="padding-top: 20px;padding-bottom: 20px;">
            <div class="container">
                <h1 class="title-heading" align="center">Shop</h1>
                <div class="row">
                    @foreach($data as $dt)
                     @if($dt->stok >=1)
                    <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="priceing-box text-center mb-30">
                            <h6>{{$dt->nama_barang}}</h6>
                            <div class="price">
                                <h3>
                                    Rp.{{number_format($dt->harga)}}
                                </h3>
                            </div>
                            <div class="price-icon">
                                <img src="{{$dt->gambar}}" alt="">
                            </div>
                            <p>{{$dt->keterangan}}</p>
                            @if(Auth::check())
                            <a class="border-btn" href="{{url('shop_detail/')}}/{{$dt->id_barang}}">Detail</a>
                            @endif
                        </div>
                    </div>
                    @endif
                
                @endforeach
                </div>
                 <div class="col col-xs-12" align="right">
                    {{$data->links()}}
                </div>
            </div>
        </section>
        <!-- Priceing Area End -->

    </main>
 @endsection