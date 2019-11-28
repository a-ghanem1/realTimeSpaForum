<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Resources\CategoryResource;
use Symfony\Component\HttpFoundation\Response;

class CategoryController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('jwt', ['except' => ['index', 'show']]);
    }
    
    public function index()
    {
        return CategoryResource::collection(Category::latest()->get());
    }//end of index

    
    public function store(Request $request)
    {
        $category       = new Category;
        $category->name = $request->name;
        $category->slug = str_slug($request->name);
        $category->save();

        return response(new CategoryResource($category), Response::HTTP_CREATED);
    }//end of store

    
    public function show(Category $category)
    {
        return new CategoryResource($category);
    }//end of show


    public function update(Request $request, Category $category)
    {
        $category->update([
            'name' => $request->name,
            'slug' => str_slug($request->name)
        ]);

        return response(new CategoryResource($category), Response::HTTP_ACCEPTED);   
    }//end of update

    
    public function destroy(Category $category)
    {
        $category->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }//end of destroy
}
