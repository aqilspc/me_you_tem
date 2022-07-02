 @extends('web.header')
 @section('content')
 @include('web.menu')
     <main>
        <section class="price-area price-fix pt-115 pb-90" style="padding-top: 20px;padding-bottom: 20px;">
            <div class="container">
                <h4 align="center">List Pages Home</h4>
                 
                 <div class="row">
                    <div class="col-md-6" align="left">
                        <a class="border-btn" href="{{url('admin_area')}}" style="color: black;">Back</a>
                    </div>
                    <div class="col-md-6" align="right">
                        <a class="border-btn" href="{{url('admin_area/home/create')}}" style="color: black;">Add Pages</a>
                    </div>
                </div>
                <br>

                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="table-responsive">
                            <table id="tableokrole">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Judul</th>
                                        <th>Created at</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                    <tbody>
                                    @foreach($data as $key => $data)
                                     <tr>
                                            <td>{{$key+1}}</td>
                                            <td>{{$data->judul}}</td>
                                            <td>{{$data->created_at}}</td>
                                            <td>
                                             <a href="{{url('admin_area/home/edit/'.$data->id)}}"><i class="fa fa-edit"></i></a>
                                            &nbsp;
                                             <a onclick="return confirm('delete data?')" href="{{url('admin_area/product/home/'.$data->id)}}"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <!-- Priceing Area End -->
    </main>
 @endsection
@section('jscustom')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
    $('#tableokrole').DataTable();
} );

    function upload_beh(id)
    {
        $('#bukti_trf'+id).submit();
    }
</script>
 @endsection