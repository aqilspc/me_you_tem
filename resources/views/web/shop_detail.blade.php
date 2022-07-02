 @extends('web.header')
 @section('content')
 @include('web.menu')
     <main>
        <!-- Banner Area Start -->
        <!-- Banner Area End -->

        <!-- Priceing Area Start -->
        <section class="price-area price-fix pt-115 pb-90" style="padding-top: 20px;padding-bottom: 20px;">
            <div class="container">
                 @if($message=Session::get('success'))
                        <div class="alert bg-teal" role="alert">
                           
                           <p align="center" style="color: red">  <em class="fa fa-lg fa-close">&nbsp;</em>  {{$message}}</p>
                        </div>
                        @endif
                <h3 align="center">{{$data->nama_barang}}</h3>
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <div class="features2-content mb-30">
                            <span class="small-title ">Detail product</span>
                            <h3>Rp.{{number_format($data->harga)}}</h3>
                            <p align="center"><img style="max-width: 30%;" src="{{$data->gambar}}"></p>
                            <p>{{$data->keterangan}}</p>
                            <p>Stok : {{$data->stok}}</p>
                            @if($data->stok < 1)

                            @else
                            <button class="btn theme-btn mt-30" type="button" 
                                            onclick="get_summary()">Calculate</button>
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
                                <form action="{{url('shop/order_now')}}" method="POST">
                                    @csrf
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" value="{{Auth::user()->name}}" placeholder="Full Name" readonly>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" name="no_telepon" placeholder="Phone number">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" id="qty_product" name="qty" placeholder="Quantity">
                                            <input type="hidden" name="harga" id="price_product" value="{{$data->harga}}">
                                             <input type="hidden" name="id_barang" value="{{$data->id_barang}}">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" name="date" placeholder="Date Order" readonly value="{{date('Y-m-d')}}">
                                        </div>
                                        <div class="col-xl-12">
                                            <textarea name="alamat" cols="30" rows="10"
                                                placeholder="Full Location"></textarea>
                                           <p align="center">Summary</p><hr>
                                            <div style="display: none;" id="preview_info">
                    
                                            </div>
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
 @section('jscustom')
<script type="text/javascript">
    function get_summary()
    {
        $('#preview_info').show();
        $('#preview_info').empty();
        // Example
        var price = document.getElementById("price_product").value;
        var qty = document.getElementById("qty_product").value;
        var amount = qty * price;
        var html = ` <p>
                                Price : Rp. `+ price +`
                            </p>
                            <p>
                                Qty : `+ qty +`
                            </p>
                            <p>
                                Grandtotal : Rp.`+ price +` x `+ qty +` = Rp.`+ amount +`
                            </p>
                            <button type="submit" class="btn theme-btn mt-30" onclick="return confirm('barang masuk keranjang klik my order untuk detail keranjang! dan masuk menu shop untuk belanja yang lain dan bayar jadi satu di keranjang anda saat ini, untuk mereset keranjang ada di menu my order')">Sumbit Order</button>`;
        $('#preview_info').append(html);
    }
</script>
 @endsection