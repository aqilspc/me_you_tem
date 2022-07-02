<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use Auth;
use App\Models\User;
class WebController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

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
        $data = DB::table('layanan')->get();
        return view('web.index',compact('data'));
    }


     public function about()
    {
        return view('web.about');
    }

     public function community()
    {
        return view('web.community');
    }

    public function community_post(Request $request)
    {
        DB::table('kontak')->insert([
            'nama_Lengkap'=>$request->nama_lengkap,
            'no_telepon'=>$request->no_telepon,
            'tanggal'=>$request->tanggal,
            'email'=>$request->email,
            'isi'=>$request->isi
        ]);
        return redirect()->back();
    }

    public function detail($id)
    {
        if(Auth::check())
        {
            $data = DB::table('layanan')->where('id',$id)->first();
            return view('web.detail',compact('data'));
        }else
        {
            return redirect('login');
        }
    }

    public function shop()
    {
        $data = DB::table('barang')->paginate(3);
        return view('web.shop',compact('data'));
    }

    public function shop_detail($id)
    {
        $data = DB::table('barang')->where('id_barang',$id)->first();
        return view('web.shop_detail',compact('data'));
    }

    public function order()
    {
        $data = DB::table('transaksi as trs')
            ->where('id_user',Auth::user()->id)
            ->get();
        $keranjang = DB::table('keranjang')->where('id_user',Auth::user()->id)->get();
        return view('web.order',compact('data'));
    }

    public function order_detail($id)
    {
        $data = DB::table('transaksi as trs')
            ->join('users as us','us.id','=','trs.id_user')
            ->join('barang as br','br.id_barang','=','trs.id_barang')
            ->select('us.name','trs.*','br.*')
            ->where('trs.id',$id)
            ->first();
        if(!$data)
        {
            return redirect('/');
        }
        $penilaian = DB::table('penilaian')->where('id_transaksi',$id)->first();
        return view('web.order_detail',compact('data','penilaian','id'));
    }

    public function upload_bukti(Request $request,$id)
    {
        $bukti = $this->uploadFile($request,'bukti_trf');
        DB::table('transaksi')->where('id',$id)->update(['bukti_trf'=>$bukti,'status'=>0]);
        return redirect('my_order');
    }

    public function insertPenilaian(Request $request){
        DB::table('penilaian')->insert([
            'id_transaksi'=>$request->id_transaksi,
            'isi'=>$request->isi,
            'bintang'=>$request->bintang,
            'created_at'=>Carbon::now()->toDateTimeString()
        ]);
        return redirect()->back();
    }

    public function registerUser(Request $request)
    {
        $user = new User;
        $user->name = $request->name;
        $user->role = 'member';
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();

        $find = User::find($user->id);
        Auth::login($find);
        return redirect('home');
    }

    
    
}
