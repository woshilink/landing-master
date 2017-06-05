<?php

namespace app\Http\Controllers\Admin\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


class loginController extends Controller
{

    public function __construct()
    {

    }


    public function showLoginPage(){

        $view = 'pages.admin.login.index';

        return view($view);

    }


    public function login(Request $request) {


        if ($request->has('username') && $request->has('password')) {


            $user = User::where("username", "=", $request->input('username'))
                ->where("password", "=", $request->input('password'))
                ->first();

            if ($user) {
                $token=str_random(60);
                $user->api_token=$token;
                $user->save();

                return redirect()->route('admin.admin',['use' => $user->api_token]);
            } else {
                return "Username or password is incorrect, login failed!";
            }
        }
        else {
            return "There is no Username or password enter";
        }



    }





}