<?php

namespace App\Http\Controllers\Api;

use App\Post;
use App\Repositories\PostRepositories;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


class PostController extends Controller
{
    protected  $post;

    /**
     * PostController constructor.
     *
     * @param $post
     */
    public function __construct(PostRepositories $post) {
        $this->post = $post;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $posts = Post::latest()->paginate();

        $response = [
            'code'=>0,
            'errmsg'=>'succed',
            'pagination' =>[
                'total' => $posts->total(),
                'per_page' => $posts->perPage(),
                'current_page' => $posts->currentPage(),
                'last_page' => $posts->lastPage(),
                'from' => $posts->firstItem(),
                'to' => $posts->lastItem()
            ],
            'data' => $posts,
        ];
        return $response;
    }

    public function search(Request $request) {

            $posts = $this->post->search($request->get('q'));
            return response()->json([
                'code' =>0,
                'errmsg'=>'succeed',
                'data'=>$posts
            ]);
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = array_merge($request->all(), [
            'user_id' => Auth::user()->id
        ]);
        $post = $this->post->store($data);
        return response()->json([
            'code'=>0,
            'errmsg'=>'sussecc',
            'data'=>$post
        ]);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = $this->post->getById($id);
        if(!$post){
            return response()->json([
                'code'=>404,
                'errmsg'=>'nonentity',
            ]);
        }
        return response()->json([
            'code'=>0,
            'errmsg'=>'sussecc',
            'data'=>$post
        ]);

    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->post->update($id,$request->all());
        return response()->json([
            'code'=>0,
            'errmsg'=>'sussecc',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = $this->post->getById($id);
        if(!$post){
            return response()->json([
                'code'=>404,
                'errmsg'=>'nonentity',
            ]);
        }
        $this->post->destroy($id);
        return response()->json([
            'code'=>0,
            'errmsg'=>'sussecc',
        ]);
    }
}
