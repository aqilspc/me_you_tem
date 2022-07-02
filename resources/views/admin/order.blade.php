 @extends('web.header')
 @section('content')
 @include('web.menu')
     <main>
        <section class="price-area price-fix pt-115 pb-90" style="padding-top: 20px;padding-bottom: 20px;">
            <div class="container">
                <h4 align="center">List Order</h4>
                <div class="row">
                    <div class="col-md-6" align="left">
                        <a class="border-btn" href="{{url('admin_area')}}" style="color: black;">Back</a>
                    </div>
                </div>
                <br>
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="table-responsive">
                            <table id="tableokrole">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>Total</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                    <tbody>
                                    @foreach($data as $key => $dt)
                                     <tr>
                                            <td>{{$key+1}}</td>
                                            <td>{{$dt->date}}</td>
                                            <td>
                                                Rp.{{number_format($dt->total)}}
                                            </td>
                                            <td>
                                                @if($dt->status==0 && $dt->bukti_trf==NULL)
                                                    Need upload proof
                                                @elseif($dt->status==0 && $dt->bukti_trf!=NULL)
                                                    Waiting approval from you
                                                @elseif($dt->status==1)
                                                    Agree 
                                                @else
                                                    Refuse 
                                                @endif
                                            </td>
                                            <td>
                                              <a href="{{url('admin_area/order/detail/'.$dt->id)}}"><i class="fa fa-eye"></i></a>
                                              &nbsp; &nbsp;
                                              <a href="{{url('pesan_order_send/'.$dt->id)}}"><i class="fa fa-comment"></i></a>
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