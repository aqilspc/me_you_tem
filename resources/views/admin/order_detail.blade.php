 @extends('web.header')
 @section('content')
 @include('web.menu')
     <main>
        <!-- Banner Area Start -->
        <!-- Banner Area End -->
<style type="text/css">
    .checked {
  color: orange;
}
</style>
        <!-- Priceing Area Start -->
        <section class="price-area price-fix pt-115 pb-90" style="padding-top: 20px;padding-bottom: 20px;">
            <div class="container">
                <h3 align="center">{{$data->nama_barang}}</h3>
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <div class="features2-content mb-30">
                            <span class="small-title ">Detail product</span>
                            <h3>Rp.{{number_format($data->harga)}}</h3>
                            <p align="center"><img style="max-width: 30%;" src="{{$data->gambar}}"></p>
                            <p>{{$data->keterangan}}</p>

                            <p>{{$data->keterangan}}</p>
                               @if($penilaian)
                                <div class="row">
                                    <div class="col">
                                        <span class="fa fa-star {{$penilaian->bintang >= 1?'checked':''}}"></span>
                                    </div>
                                    <div class="col">
                                        <span class="fa fa-star {{$penilaian->bintang >= 2?'checked':''}}"></span>
                                    </div>
                                    <div class="col">
                                        <span class="fa fa-star {{$penilaian->bintang >= 3?'checked':''}}"></span>
                                    </div>
                                    <div class="col">
                                        <span class="fa fa-star {{$penilaian->bintang >= 4?'checked':''}}"></span>
                                    </div>
                                    <div class="col">
                                        <span class="fa fa-star {{$penilaian->bintang >= 5?'checked':''}}"></span>
                                    </div>
                                </div>
                                <p>
                                Ulasan ({{$penilaian->created_at}}) : <b>{{$penilaian->isi}}</b>
                            </p>
                                @else
                                <p>
                                    Belum ada penilaian
                                </p>
                                @endif

                      </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="calculate-box white-bg">
                            <div class="calculate-content" style="padding:0px;">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="section-title mb-50">
                                            <span class="small-title style-3">Detail Order</span>
                                        </div>
                                    </div>
                                </div>
                                <form action="#">
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" placeholder="Full Name" value="{{$data->name}}">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" placeholder="Phone number" value="{{$data->no_telepon}}">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" id="qty_product" 
                                            placeholder="Quantity" value="{{$data->qty}}">
                                            <input type="hidden" id="price_product" value="120000">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" placeholder="Date Order" readonly value="">
                                        </div>
                                        <div class="col-xl-12">
                                            <textarea name="Special request" cols="30" rows="10"
                                                placeholder="Full Location"></textarea>
                                           <p align="center">Summary</p><hr>
                                            <div  id="preview_info">
                                                <p>
                                                    Price : Rp.{{number_format($data->harga)}}
                                                </p>
                                                <p>
                                                    Qty : {{$data->qty}}
                                                </p>
                                                <p>
                                                    Grandtotal : Rp.{{number_format($data->harga)}} x {{$data->qty}} = Rp.{{number_format($data->harga)}} 
                                                </p>
                                                <p>
                                                    Prof : <img style="max-width: 50%;" src="{{$data->bukti_trf}}">
                                                </p>
                                            </div>
                                            @if($data->status==0)
                                            <a class="theme-btn" type="button" onclick="return confirm('Agree this transaction?')"
                                            href="
                                            {{url('admin_area/order_status/'.$data->id.'/'.'1')}}">Agree</a>
                                            <a class="theme-btn" type="button" onclick="return confirm('Refuse this transaction?')" href="{{url('admin_area/order_status/'.$data->id.'/'.'2')}}">Refuse</a>
                                            @endif
                                              <a class="theme-btn" type="button" href="{{url('admin_area/order')}}">Back</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Priceing Area End -->

    </main>
 @endsection
