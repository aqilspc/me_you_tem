 @extends('web.header')
 @section('content')
 @include('web.menu')


            <!-- Service Archive -->
        <section class="contact-area pt-120 pb-120" style="padding-top: 20px;">
            <h3 align="center">Tell Us</h3>
            <hr>
            <div class="container">
                <div class="contact-form">
                    <form action="{{url('community_post')}}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="name">
                                    <label for="name">Full Name <span>*</span></label>
                                    <input name="nama_lengkap" type="text" id="name" placeholder="Type your first name....">
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="phone">
                                    <label for="phone">Phone Number<span>*</span></label>
                                    <input name="no_telepon" type="text" id="email" placeholder="Type your phone number....">
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="email">
                                    <label for="email">Email <span>*</span></label>
                                    <input name="email" type="email" id="phone" placeholder="Type your email....">
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="service">
                                    <label for="service">Date Of Birth <span>*</span></label>
                                    <input name="tanggal" type="date" id="service">
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="massage" style="margin-bottom: 0px;">
                                    <label for="massage">Tell us about your concerns*</label>
                                    <textarea name="isi" placeholder="Tell us about your concerns...." id="massage" rows="10"></textarea>
                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="contact-btn text-center">
                                    <button class="theme-btn" type="submit" >Submit</button>
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