 @extends('web.header')
 @section('content')
 @include('web.menu')
     <main>
        <section class="price-area price-fix pt-115 pb-90" style="padding-top: 20px;padding-bottom: 20px;">
            <div class="container">
                <h4 align="center">Edit Pages Home</h4>
                    <div class="col-xl-12 col-lg-12 col-md-12">
                         <div class="calculate-box white-bg">
                              <div class="calculate-content" style="padding:0px;">
                             <form action="{{url('/admin_area/home/update/'.$data->id)}}" enctype="multipart/form-data" method="post">
                                @csrf
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="text" placeholder="Title" name="judul"
                                             value="{{$data->judul}}">
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                           <input type="file" placeholder="Date Order" name="gambar1">
                                           <input type="hidden" placeholder="Date Order" 
                                           name="old_gambar1" value="{{$data->gambar1}}">
                                           <small>Gambar 1</small>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 mb-30">
                                            <input type="file" placeholder="Date Order" name="gambar2">
                                            <input type="hidden" placeholder="Date Order" 
                                           name="old_gambar2" value="{{$data->gambar2}}">
                                            <small>Gambar 2</small>
                                        </div>
                                        <div class="col-xl-6">
                                            <textarea name="isi_1" cols="30" rows="10"
                                                placeholder="description 1">{{$data->isi_1}}</textarea>  
                                                 <small>Deskripsi 1</small> 
                                        </div>
                                         <div class="col-xl-6">
                                            <textarea name="isi_2" cols="30" rows="10"
                                                placeholder="description 2">{{$data->isi_2}}</textarea>  
                                             <small>Deskripsi 2</small> 
                                        </div>
                                         <button class="btn theme-btn mt-30" type="submit">Sumbit </button>
                                         &nbsp;
                                         <a class="btn theme-btn mt-30" href="{{url('admin_area/home')}}" style="color: black;">Back</a>
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
