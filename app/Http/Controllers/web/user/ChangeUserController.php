<?php

namespace App\Http\Controllers\web\user;

use App\Models\ListDay;
use App\Models\ListFood;
use App\Models\ListChange;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ListAlternatife;
use Illuminate\Support\Facades\Auth;

class ChangeUserController extends Controller
{
    public function __construct(){
        $this->middleware(function ($request,$next) {
            if(Auth::check()){
                $role = Auth::user()->role;
                if(!$role || $role != 'user'){
                    return view('pages.auth.mainuser');
                }
            }else{
                return redirect()->route('user.auth.index');
            }
            return $next($request);
        });
    }


    public function index()
    {
        
    }

    
    public function create()
    {
        //
    }

    
    public function store(Request $request)
    {
        $change = new ListChange;
        $change->id_users = Auth::user()->id;
        $change->name_food = $request->food;
        $change->id_list_food = $request->list_food;
        $change->created_at = now();
        $change->updated_at = now();
        dd($change);
        $change->save();

        return response()->json([
            'alert' => 'success',
            'message' => 'Menu Berhasil Berganti',
        ]);
    }

    
    public function show(ListFood $change)
    {
        $list_day = ListDay::get();
        $collection = ListAlternatife::where('id_list_food',$change->id)->get();
        // dd($list_day);
        return view('pages.user.change',compact('change','collection','list_day'));
    }

    
    public function edit($id)
    {
        //
    }

    
    public function update(Request $request, $id)
    {
        //
    }

    
    public function destroy($id)
    {
        //
    }
}