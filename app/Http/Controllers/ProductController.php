<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function products()
    {
        $products = Product::latest()->paginate(5);
        return view('products', ['products' => $products]);
    }
    public function addProduct(ProductRequest $request)
    {

        $request->validated();
        Product::create([
            'name' => $request->name,
            'price' => $request->price
        ]);
        return response()->json([
            'status' => 'success'
        ]);
    }


    public function updateProduct(UpdateProductRequest $request)
    {
        $request->validated();
        $product = Product::find($request->up_id);

        $product->update([
            'name' => $request->up_name,
            'price' => $request->up_price
        ]);
        return response()->json([
            'status' => 'success'
        ]);
    }
}
