 @extends('web.header')
 @section('content')
 @include('web.menu')


            <!-- Service Archive -->
        <section class="contact-area pt-120 pb-120" style="padding-top: 20px;">
            <h3 align="center">Detail</h3>
            <hr>
            <div class="container">
                <div class="contact-form">
                    <form action="assets/mail.php" method="POST">
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="name">
                                    <label for="name">Full Name <span>*</span></label>
                                    <input name="nama_lengkap" type="text" id="name" placeholder="Type your first name...." value="{{$data->nama_lengkap}}">
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="phone">
                                    <label for="phone">Phone Number<span>*</span></label>
                                    <input name="no_telepon" type="text" id="email" placeholder="Type your phone number...." value="{{$data->no_telepon}}">
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="email">
                                    <label for="email">Email <span>*</span></label>
                                    <input name="email" type="email" id="phone" placeholder="Type your email...." value="{{$data->email}}">
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="service">
                                    <label for="service">Date Of Birth <span>*</span></label>
                                    <input name="tanggal" type="date" id="service" value="{{$data->tanggal}}">
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="massage" style="margin-bottom: 0px;">
                                    <label for="massage">Tell us about your concerns*</label>
                                    <textarea name="isi" placeholder="Tell us about your concerns...." id="massage" rows="10">{{$data->isi}}</textarea>
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="contact-btn text-center">
                                    <a class="theme-btn" href="{{url('admin_area/community')}}" >Back</a>
                                    <p class="ajax-response"></p>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
            <!-- Service Archive -->
        </main>
@endsection