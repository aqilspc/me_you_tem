 @extends('web.header')
 @section('content')
 @include('web.menu')
     <main>
        <section class="price-area price-fix pt-115 pb-90" style="padding-top: 20px;padding-bottom: 20px;">
            <div class="container">
                <h4 align="center">Edit Product</h4>
                    <div class="col-xl-12 col-lg-12 col-md-12">
                         <div class="calculate-box white-bg">
                              <div class="calculate-content" style="padding:0px;">
                            <form action="{{url('admin_area/product/update/'.$data->id_barang)}}" enctype="multipart/form-data" method="post">
                                @csrf
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <label>Product Name</label>
                                            <input type="text" value="{{$data->nama_barang}}" placeholder="Product Name" name="nama_barang">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <label>Product number</label>
                                            <input type="text" value="{{$data->no_barang}}" placeholder="Product number" name="no_barang">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <label>Stock</label>
                                            <input type="text" value="{{$data->stok}}"  placeholder="Stock" name="stok">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                             <label>Image</label>
                                            <input type="file" placeholder="Date Order" name="gambar">
                                            <input type="hidden" placeholder="Date Order" name="gambar_old" value="{{$data->gambar}}">
                                            <small>Isi bila ada perubahan</small>
                                        </div>
                                       <div class="col-xl-6">
                                        <label>Price</label>
                                            <input type="text" placeholder="Price" value="{{$data->harga}}" name="harga">
                                        </div>
                                        <div class="col-xl-6">
                                            <label>Product description</label>
                                            <textarea name="keterangan" cols="30" rows="10"
                                                placeholder="Product description">{{$data->keterangan}}</textarea>
                                                <button class="btn theme-btn mt-30" type="submit">Sumbit </button>
                                                &nbsp;
                                                <a class="btn theme-btn mt-30" href="{{url('admin_area/product')}}" style="color: black;">Back</a>
                                        </div>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Priceing Area End -->
    </main>
 @endsection
