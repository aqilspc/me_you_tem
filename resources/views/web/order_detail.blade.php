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
                         &nbsp;
                                           
                        <div class="features2-content mb-30">
                            <span class="small-title ">Detail product</span>
                            <h3>Rp.{{number_format($data->harga)}}</h3>
                            <p align="center"><img style="max-width: 30%;" src="{{$data->gambar}}"></p>

                            <p>{{$data->keterangan}}</p>
                                <p align="center">
                                    <b>Penilaian</b>
                                </p>
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
                                Ulasan ({{$penilaian->created_at}}): <b>{{$penilaian->isi}}</b>
                            </p>
                                @else
                                <p>
                                    Belum ada penilaian <br>
                                    Beri penilaian
                                </p>
                                <form method="POST" action="{{url('beri_penilaian')}}">
                                    @csrf
                                    <input type="hidden" name="id_transaksi" value="{{$id}}">
                                 <div class="row">
                                    <div class="col">
                                        <input type="radio" id="bintang1" name="bintang" value="1">
                                        <span class="fa fa-star checked"></span> 1
                                    </div>
                                    <div class="col">
                                        <input type="radio" id="bintang2" name="bintang" value="2">
                                        <span class="fa fa-star checked"></span> 2
                                    </div>
                                    <div class="col">
                                        <input type="radio" id="bintang3" name="bintang" value="3">
                                        <span class="fa fa-star checked"></span> 3
                                    </div>
                                    <div class="col">
                                       <input type="radio" id="bintang4" name="bintang" value="4">
                                       <span class="fa fa-star checked"></span> 4
                                    </div>
                                    <div class="col">
                                        <input type="radio" id="bintang5" name="bintang" value="5">
                                        <span class="fa fa-star checked"></span> 5
                                    </div>
                                </div>
                                <br>
                                 <div class="row">
                                    <textarea class="form-control" name="isi" placeholder="Tulis ulasan anda!"></textarea>
                                 </div>
                                 <br>
                                 <div class="row">
                                    <button class="theme-btn" type="submit">Ulas</button>
                                </div>
                                </form>
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
                                            <input type="text" placeholder="Date Order" readonly value="{{$data->date}}">
                                        </div>
                                        <div class="col-xl-12">
                                            <textarea name="Special request" cols="30" rows="10"
                                                placeholder="Full Location">{{$data->alamat}}</textarea>
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
                                                    Prof : <img style="max-width: 50%;"
                                                     src="{{$data->bukti_trf}}">
                                                </p>
                                            </div>
                                            @if($data->bukti_trf==NULL && $data->status==0)
                                            <p> Need upload prof
                                                <form enctype="multipart/form-data"
                                                 action="{{url('my_order_upload/'.$data->id)}}"
                                                 method="post" id="bukti_trf_form">
                                                    @csrf
                                                    <input type="file"  name="bukti_trf" id="bukti_trf">
                                                    <br>
                                                    <button class="theme-btn"  type="submit">Upload</button>
                                                </form>
                                            </p>
                                            @elseif($data->bukti_trf==NULL && $data->status==2)

                                            <p>Refused,  Need upload proof, again
                                                <form enctype="multipart/form-data"
                                                 action="{{url('my_order_upload/'.$data->id)}}"
                                                 method="post" id="bukti_trf_form">
                                                    @csrf
                                                    <input type="file" name="bukti_trf" id="bukti_trf">
                                                      <br>
                                                    <button class="theme-btn" type="submit">Upload</button>
                                                </form>
                                            </p>
                                            @endif
                                              <a class="theme-btn" href="{{url('my_order')}}">Back</a>
                                               <a class="theme-btn" href="{{url('pesan_order_send/'.$id)}}">Chat Admin</a>
                                            <br>
                                        </div>
                                    </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Priceing Area End -->

    </main>
 @endsection
  @section('jscustom')
<script type="text/javascript">
function submit_form()
{
    $('#bukti_trf_form').submit();
}
</script>
 @endsection