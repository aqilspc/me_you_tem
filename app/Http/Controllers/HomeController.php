<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use Auth;
use Session;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function uploadFile(Request $request,$oke)
    {
            $result ='';
            $file = $request->file($oke);
            $name = $file->getClientOriginalName();
            // $tmp_name = $file['tmp_name'];

            $extension = explode('.',$name);
            $extension = strtolower(end($extension));

            $key = rand().'-'.$oke;
            $tmp_file_name = "{$key}.{$extension}";
            $tmp_file_path = "admin/images/barang/";
            $file->move($tmp_file_path,$tmp_file_name);
            // if(move_uploaded_file($tmp_name, $tmp_file_path)){
            $result = $tmp_file_name;
            // }
        return url('admin/images/barang').'/'.$result;
    }

    public function index()
    {
        if(Auth::user()->role=='admin')
        {
            return redirect('admin_area');
        }else
        {
            return redirect('/');
        }
        
    }

    public function admin_area()
    {
        if(Auth::user()->role=='admin')
        {
            return view('admin.admin_area');
        }else
        {
            return redirect()->back();
        }
        
    }

    public function product()
    {
        if(Auth::user()->role=='admin')
        {
            $data = DB::table('barang')->get();
            return view('admin.product',compact('data'));
        }else
        {
            return redirect()->back();
        }    
    }

    public function add_product()
    {
        if(Auth::user()->role=='admin')
        {
            return view('admin.create_product');
        }else
        {
            return redirect()->back();
        }    
    }

    public function edit_product($id)
    {
        if(Auth::user()->role=='admin')
        {
            $data = DB::table('barang')->where('id_barang',$id)->first();
            return view('admin.edit_product',compact('data'));
        }else
        {
            return redirect()->back();
        }    
    }

    public function create_product(Request $request)
    {
        $cek = DB::table('barang')->where('no_barang',$request->no_barang)->first();
        if($cek)
        {
            return redirect()->back()->with('error','gagal add produk dengan no barang '.$request->no_barang.' sudah ada!');
        }else{
            DB::table('barang')->insert(
                [
                    'nama_barang'=>$request->nama_barang,
                    'harga'=>$request->harga,
                    'no_barang'=>$request->no_barang,
                    'stok'=>$request->stok,
                    'gambar'=>$this->uploadFile($request,'gambar'),
                    'keterangan'=>$request->keterangan,
                    'created_at'=>Carbon::now()->toDateTimeString()
                ]);
            return redirect('admin_area/product');
        }
    }

    public function update_product(Request $request,$id)
    {
        if($request->file('gambar') != null)
        {
            $fixGambar = $this->uploadFile($request,'gambar');
        }else
        {
            $fixGambar = $request->gambar_old;
        }

         DB::table('barang')->where('id_barang',$id)->update(
            [
                'nama_barang'=>$request->nama_barang,
                'harga'=>$request->harga,
                'no_barang'=>$request->no_barang,
                'stok'=>$request->stok,
                'gambar'=>$fixGambar,
                'keterangan'=>$request->keterangan,
                'created_at'=>Carbon::now()->toDateTimeString()
            ]);
        return redirect('admin_area/product');
    }

    public function delete_product($id)
    {
        DB::table('barang')->where('id_barang',$id)->delete();
        return redirect('admin_area/product');
    }


    public function home()
    {
        if(Auth::user()->role=='admin')
        {
            $data = DB::table('layanan')->get();
            return view('admin.home',compact('data'));
        }else
        {
            return redirect()->back();
        }
         
    }

    public function add_home()
    {
        if(Auth::user()->role=='admin')
        {
            return view('admin.create_home');
        }else
        {
            return redirect()->back();
        }    
    }

    public function edit_home($id)
    {
        if(Auth::user()->role=='admin')
        {
            $data = DB::table('layanan')->where('id',$id)->first();
            return view('admin.edit_home',compact('data'));
        }else
        {
            return redirect()->back();
        }    
    }

    public function create_home(Request $request)
    {
         DB::table('layanan')->insert(
            [
                'judul'=>$request->judul,
                'gambar2'=>$this->uploadFile($request,'gambar2'),
                'isi_1'=>$request->isi_1,
                'gambar1'=>$this->uploadFile($request,'gambar1'),
                'isi_2'=>$request->isi_2,
                'created_at'=>Carbon::now()->toDateTimeString()
            ]);
        return redirect('admin_area/home');
    }

    public function update_home(Request $request,$id)
    {
        if($request->file('gambar1') != null)
        {
            $fixGambar1 = $this->uploadFile($request,'gambar1');
        }else
        {
            $fixGambar1 = $request->old_gambar1;
        }

        if($request->file('gambar2') != null)
        {
            $fixGambar2 = $this->uploadFile($request,'gambar2');
        }else
        {
            $fixGambar2 = $request->old_gambar2;
        }

         DB::table('layanan')->where('id',$id)->update(
            [
                'judul'=>$request->judul,
                'gambar2'=>$fixGambar2,
                'isi_1'=>$request->isi_1,
                'gambar1'=>$fixGambar1,
                'isi_2'=>$request->isi_2,
                'created_at'=>Carbon::now()->toDateTimeString()
            ]);
        return redirect('admin_area/home');
    }

    public function delete_home($id)
    {
        DB::table('layanan')->where('id',$id)->delete();
        return redirect('admin_area/home');
    }

    public function community()
    {
        if(Auth::user()->role=='admin')
        {
            //$data = DB::table('kontak')->get();
            $data = DB::table('room_pesan as rps')
            ->join('users as us','us.id','=','rps.pengirim_id')
            ->where('id_transaksi',NULL)
            ->select('us.name','us.email','rps.created_at','rps.id')
            ->get();
            return view('admin.kontak',compact('data'));
        }else
        {
            return redirect()->back();
        }
         
    }

    public function detail_community($id)
    {
        if(Auth::user()->role=='admin')
        {
            $data = DB::table('kontak')->where('id',$id)->first();
            return view('admin.kontak_detail',compact('data'));
        }else
        {
            return redirect()->back();
        }
         
    }

    public function order()
    {
        if(Auth::user()->role=='admin')
        {
            $data = DB::table('transaksi as trs')
            ->join('users as us','us.id','=','trs.id_user')
            ->select('us.name','trs.*')
            ->get();
            return view('admin.order',compact('data'));
        }else
        {
            return redirect()->back();
        }
    }

    public function order_detail($id)
    {
        if(Auth::user()->role=='admin')
        {
             $data = DB::table('transaksi as trs')
            ->join('users as us','us.id','=','trs.id_user')
            ->join('transaksi_item as trsi','trsi.id_transaksi','=','trs.id')
            ->join('barang as br','br.id_barang','=','trsi.id_barang')
            ->select('us.name','trs.*','br.*','trsi.*')
            ->where('trs.id',$id)
            ->groupBy('trsi.id_transaksi')
            ->first();
            $penilaian = DB::table('penilaian')->where('id_transaksi',$id)->first();
            if(!$data)
            {
                return redirect('admin_area');
            }
            $item = DB::table('transaksi as trs')
            ->join('users as us','us.id','=','trs.id_user')
            ->join('transaksi_item as trsi','trsi.id_transaksi','=','trs.id')
            ->join('barang as br','br.id_barang','=','trsi.id_barang')
            ->select('us.name','trs.*','br.*','trsi.*',DB::raw('count(trsi.id_barang) as qty_barang'))
            ->where('trs.id',$id)
            ->groupBy('trsi.id_barang')
            ->get();
            //return $item;
            $penilaian = DB::table('penilaian')->where('id_transaksi',$id)->first();
            return view('admin.order_detail',compact('data','penilaian','id','item'));
        }else
        {
            return redirect()->back();
        }
    }

    public function changeStatus($id,$status)
    {
        DB::table('transaksi')->where('id',$id)->update(['status'=>$status]);
        if($status==1 || $status=='1')
        {
            $data = DB::table('transaksi')->where('id',$id)->select('id')->first();
            $item = DB::table('transaksi_item')->where('id_transaksi',$data->id)->select(DB::raw('id_barang,sum(qty) as qty_barang'))->groupBy('id_barang')->get();
            foreach ($item as $key => $value) {
                $barang = DB::table('barang')->where('id_barang',$value->id_barang)
                ->select('stok')->first();
                $jadinya = $barang->stok - $value->qty_barang;
                 DB::table('barang')->where('id_barang',$value->id_barang)->update(['stok'=>$jadinya]);
            } 
            DB::table('transaksi')->where('id',$id)->update(['status'=>1]);
        }else{
            DB::table('transaksi')->where('id',$id)->update(['status'=>2,'bukti_trf'=>NULL]);
        }
        return redirect()->back();
    }

    public function purchaseNow(Request $request)
    {
        //return 'test';
       // return $request->all();
        $barang = DB::table('barang')->where('id_barang',$request->id_barang)
        ->select('stok')->first();
        if($barang->stok < $request->qty)
        {
            return redirect()->back()
            ->with('success','The product stock limited than your request!');
        }elseif($barang->stok < 1)
        {
            return redirect()->back()
            ->with('success','The product out of stock!');
        }else
        {
            $trsSes = Session::get('trans');
            if($trsSes==null){
                    $trs = DB::table('transaksi')->insertGetId([
                       // 'qty'=>$request->qty,
                        'id_user'=>Auth::user()->id,
                        'date'=>Carbon::now()->format('Y-m-d'),
                        'status'=>3,
                ]);
                Session::put('trans',$trs);
                DB::table('transaksi_item')->insert([
                    'id_barang'=>$request->id_barang
                    ,'id_transaksi'=>$trs
                    ,'qty'=>$request->qty
                ]);
            }else{
                DB::table('transaksi_item')->insert([
                    'id_barang'=>$request->id_barang
                    ,'id_transaksi'=>$trsSes
                    ,'qty'=>$request->qty
                    ,'created_at'=>Carbon::now()->toDateTimeString(),
                ]);
            }
           // $total = $request->qty * $request->harga;
            
            return redirect()->back();
        }
    }

    public function createRoom($id=0)
    {
        $room = DB::table('room_pesan')->where('id_transaksi',$id)->first();
        if($room)
        {
            return redirect('pesan_order'.'/'.$id.'/'.$room->id);
        }else{
            $cekAdmin = DB::table('room_pesan')->where('id',$id)->first();
            if($cekAdmin)
            {
                return redirect('pesan_order'.'/'.$id.'/'.$cekAdmin->id);
            }
            $penrima = DB::table('users')->where('role','admin')->first();
            if($id == 0)
            {
                $cek = DB::table('room_pesan')
                ->where('pengirim_id',Auth::user()->id)
                ->orWhere('penerima_id',Auth::user()->id)
                ->where('id_transaksi',NULL)
                ->first();
                if($cek)
                {
                    $room = DB::table('room_pesan')
                    ->where('pengirim_id',Auth::user()->id)
                    ->where('id_transaksi',NULL)
                    ->first();
                    return redirect('pesan_order'.'/'.$id.'/'.$room->id);
                }else{
                    $room = DB::table("room_pesan")->insertGetId([
                        'pengirim_id'=>Auth::user()->id
                        ,'penerima_id'=>$penrima->id
                    ]);
                    return redirect('pesan_order'.'/'.$id.'/'.$room);
                }
            }
            $room = DB::table("room_pesan")->insertGetId([
                'id_transaksi'=>$id
                ,'pengirim_id'=>Auth::user()->id
                ,'penerima_id'=>$penrima->id
            ]);
            return redirect('pesan_order'.'/'.$id.'/'.$room);
        }
    }

    public function messageUserTransaction($id,$id_room)
    {
        $send = DB::table('room_pesan_detail as rp')
                ->where('rp.id_room',$id_room)
                ->get();
        $room = DB::table('room_pesan')->where('id_transaksi',$id)->first();
        if(!$room)
        {
           // return 'oo';
            $roomaq = DB::table('room_pesan')->where('id',$id_room)->where('id_transaksi',NULL)->first();
            $name = '';
            $dt1 = DB::table('users')->where('id',$roomaq->penerima_id)->first();
            $name_pr = $dt1->name;
            $dt2 = DB::table('users')->where('id',$roomaq->pengirim_id)->first();
            $name_tr = $dt2->name;
            if($roomaq->pengirim_id == Auth::user()->id){
                $dt = DB::table('users')->where('id',$roomaq->penerima_id)->first();
                $name = $dt->name;
                $name_tr = '';
                $name_pr = $dt->name;
            }else{
                $dt = DB::table('users')->where('id',$roomaq->pengirim_id)->first();
                $name = $dt->name;
                
            }
            return view('web.pesan',compact('id_room','send','name','id','name_tr','name_pr'));
        }
        $name = '';
        $dt1 = DB::table('users')->where('id',$room->penerima_id)->first();
        $name_pr = $dt1->name;
        $dt2 = DB::table('users')->where('id',$room->pengirim_id)->first();
        $name_tr = $dt2->name;
        if($room->pengirim_id == Auth::user()->id){
            $dt = DB::table('users')->where('id',$room->penerima_id)->first();
            $name = $dt->name;
            $name_tr = '';
            $name_pr = $dt->name;
        }else{
            $dt = DB::table('users')->where('id',$room->pengirim_id)->first();
            $name = $dt->name;
            
        }
        return view('web.pesan',compact('id_room','send','name','id','name_tr','name_pr'));
    }

    public function sendMesaage(Request $request,$id_room)
    {
        $room = DB::table('room_pesan')->where('id',$id_room)->first();
        if(Auth::user()->id == $room->pengirim_id){
            DB::table('room_pesan_detail')->insert([
                'id_room'=>$id_room
                ,'send'=>$request->isi
                ,'created_at'=>Carbon::now()->toDateTimeString()
            ]);
        }else{
            DB::table('room_pesan_detail')->insert([
                'id_room'=>$id_room
                ,'reply'=>$request->isi
                ,'created_at'=>Carbon::now()->toDateTimeString()
            ]);
        }

        return redirect()->back();
    }
    
}
