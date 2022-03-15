<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Carbon\Carbon;

class HelloController extends Controller
{
    public function index()
    {
        return response()->json([
            'body' => 'Hello, World!',
            'datetime' => Carbon::now(),
        ]);
    }
}