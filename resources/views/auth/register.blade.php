<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>The Beauty Shop.sply</title>
    <!-- Favicon-->
    <link rel="icon" href="{{url('favicon.ico')}}" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="{{url('plugins/bootstrap/css/bootstrap.css')}}" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="{{url('plugins/node-waves/waves.css')}}" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="{{url('plugins/animate-css/animate.css')}}" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="{{url('css/style.css')}}" rel="stylesheet">
</head>

<body class="login-page">
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);"><b>The Beauty Shop.sply</b></a>
            <small></small>
            <br>
            <small></small>
        </div>
        <div class="card">
            <div class="body">
                <form id="sign_in" action="{{url('member_add')}}" method="POST">
                    @csrf
                    <div class="msg">Fill this form</div>
                     <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <input type="text" class="form-control" name="name" placeholder="Full name" required autofocus>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <input type="email" class="form-control" name="email" placeholder="Email" required autofocus onchange="cekemail(this.value)">
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <input type="password" class="form-control" name="password" placeholder="Password" required>
                        </div>
                    </div>
                   <div class="row">
                        <div class="col-xs-4">
                             <a  href="{{url('login')}}"> <button class="btn btn-block bg-pink waves-effect" type="button">Login</button> </a>
                          
                        </div>
                        <div class="col-xs-4">
                            <a href="{{url('/')}}"><button class="btn btn-block bg-green waves-effect" type="button">Home</button></a>
                        </div>
                        <div class="col-xs-4" id="iyadaftar">
                          <button class="btn btn-block bg-blue waves-effect" type="submit">Register</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>

    <!-- Jquery Core Js -->
    <script src="{{url('plugins/jquery/jquery.min.js')}}"></script>

    <!-- Bootstrap Core Js -->
    <script src="{{url('plugins/bootstrap/js/bootstrap.js')}}"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="{{url('plugins/node-waves/waves.js')}}"></script>

    <!-- Validation Plugin Js -->
    <script src="{{url('plugins/jquery-validation/jquery.validate.js')}}"></script>

    <!-- Custom Js -->
    <script src="{{url('js/admin.js')}}"></script>
    <script src="{{url('js/pages/examples/sign-in.js')}}"></script>
    <script type="text/javascript">
function cekemail(argument)
{
        var CSRF_TOKEN = "{{ csrf_token() }}";
        var temp = [];
             $.ajaxSetup({
                  headers: {

                    'X-CSRF-TOKEN': CSRF_TOKEN
                  }
              });
              var form = new FormData();
              form.append('email', argument);
                    $.ajax({
                        type: "POST",
                        url: "{{url('member/cek_email')}}", 
                        data: form,
                        success: function(data) {
                          //console.log(data);
                             $.each(data, function (key, value) {
                                temp.push({
                                    v: value,
                                    k: key
                                });
                            });

                             if(temp[0].v=='success')
                             {
                               document.getElementById('iyadaftar').style.display='';
                             }else
                             {
                                alert('email yang anda masukkan telah terdaftar');
                                 document.getElementById('iyadaftar').style.display='none';
                             }
                        },
                        cache: false,
                        contentType: false,
                        processData: false,
                        error: function() {
                           // alert('Error Submitting');
                        }
                    });
                }
    </script>
</body>

</html>