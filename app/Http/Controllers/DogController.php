<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Dog;

class DogController extends Controller
{
    public function getDogs(Request $request)
    {
        return response(\App\Dog::all());
    }

    public function insertDog(Request $request)
    {
        $validator = $request->validate([
            'breed' => 'required|string',
            'size' => 'required|string',
            'hair_colour' => 'required|string',
            'photo' => 'required|image|mimes:png,jpg,jpeg|max:2048'
        ]);

        if ($validator) {
            $dog = new Dog;
            $dog->breed=$request->breed;
            $dog->size=$request->size;
            $dog->hair_colour=$request->hair_colour;
            $dog->photo=$request->photo;
            $dog->save();
        }

        return redirect('dogs');
    }
}
