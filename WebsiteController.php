<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WebsiteController extends Controller
{
    public function index(){
        return view('website.index');
    }
    public function element(){
        return view('website.elements');
    }
    public function article(){
        return view('website.article');
    }
    public function note(){
        return view('website.note');
    }
}
