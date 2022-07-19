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
                             <a style="min-width: 1.8em;
                                       padding: .25em !important;
                                       margin-left: .1em;
                                       margin-right: .1em;
                                                color: blue !important;
                                                cursor: pointer;" 
                                                href="{{url('shop_detail/')}}/{{$dt->id_barang}}">
                                                <i class="fas fa-eye"></i> Read More</a>
                                            &nbsp;
                            <a style=" min-width: 1.8em;
                                                padding: .25em !important;
                                                margin-left: .1em;
                                                margin-right: .1em;
                                                color: blue !important;
                                                cursor: pointer;" data-toggle="modal" data-target="#myModal{{$dt->id_barang}}"><i class="fas fa-shopping-cart"></i> Add to Cart</a>
                            @endif
                            <div class="modal" id="myModal{{$dt->id_barang}}">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                  <form action="{{url('shop/order_now')}}" method="POST">
                                    @csrf
                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                      <h4 class="modal-title">Add Quantity {{$dt->nama_barang}}</h4>
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      <small>Fyi : You can look cart detail on my order menu</small>
                                    </div>
                                    
                                    <!-- Modal body -->
                                    <div class="modal-body">
                                     <input type="number" name="qty" class="form-control" placeholder="EX : 5">
                                     <input type="hidden" name="id_barang" value="{{$dt->id_barang}}">
                                    </div>
                                    
                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                      <button type="submit" class="btn btn-success"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                                    </div>
                                    </form>
                                  </div>
                                </div>
                              </div>
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