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
                
                
                @php $grandtotal = 0;
                     $qtyFinal = 0;
                @endphp
                <div class="row">
                    @foreach($item as $it)
                    @php $total = $it->qty_barang * $it->qty * $it->harga; 
                         $grandtotal += $total;
                         $qtyFinal +=  $it->qty_barang * $it->qty;
                    @endphp
                    <div class="col-xl-6 col-lg-6 col-md-12">
                         &nbsp;
                         <h3 align="center">{{$it->nama_barang}}</h3>                    
                        <div class="features2-content mb-30">
                            <span class="small-title ">Qty : {{$it->qty_barang}} x {{$it->qty}} : Rp.{{number_format($total)}}</span>
                            <h3>Rp.{{number_format($it->harga)}}</h3>
                            <p align="center"><img style="max-width: 30%;" src="{{$it->gambar}}"></p>
                            <p>{{$it->keterangan}}</p>
                      </div>
                    </div>
                    @endforeach
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
                                @if($data->bukti_trf==NULL && $data->status==3)
                                 <form enctype="multipart/form-data"
                                                 action="{{url('my_order_confirm/'.$id)}}"
                                                 method="post" >
                                                    @csrf
                                @endif
                                    <div class="row">
                                       
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" required  readonly placeholder="Full Name" value="{{$data->name}}">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" required placeholder="Phone number" value="{{$data->no_telepon == 0 ?'':$data->no_telepon}}" name="no_telepon">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" id="qty_product" 
                                            placeholder="Quantity" required value="{{$data->qty}}" readonly>
                                            <input type="hidden" id="price_product" value="120000">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" placeholder="Date Order" readonly value="{{$data->date}}">
                                        </div>
                                        <div class="col-xl-12">
                                            <textarea name="alamat" cols="30" rows="10"
                                                placeholder="Full Location" required>{{$data->alamat}}</textarea>
                                           <p align="center">Summary</p><hr>
                                            <div  id="preview_info">
                                                <p>
                                                    Grandtotal : Rp.{{number_format($grandtotal)}}
                                                </p>
                                                <p>
                                                    Prof : <a href="{{$data->bukti_trf}}" target="_blank"><img style="max-width: 50%;"
                                                     src="{{$data->bukti_trf}}"></a>
                                                     <small>Clik image for detail</small>
                                                </p>
                                            </div>
                                            @if($data->bukti_trf==NULL && $data->status==0)
                                            <p> Need upload prof from member
                                              
                                            </p>
                                            @elseif($data->bukti_trf!=NULL && $data->status==0)
                                            <p> Waiting Approve Admin
                                               <a class="theme-btn" href="{{url('admin_area/order_status/'.$id.'/1')}}">Approve</a>
                                               <a class="theme-btn" href="{{url('admin_area/order_status/'.$id.'/2')}}">Refuse</a>
                                            </p>
                                            @elseif($data->bukti_trf==NULL && $data->status==2)
                                            <p>Refused,  Need upload proof, again from member
                                             
                                            </p>
                                            @elseif($data->bukti_trf!=NULL && $data->status==1)
                                            <p>Approved
                                               
                                            </p>
                                        </form>
                                            @endif
                                            
                                            <br>
                                        </div>
                                    </div>
                               
                            </div>
                             @if($data->status==1)
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
                                <p align="center">
                                    
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
                                @endif
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