<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Support\Facades\Cache;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class PostController extends Controller {
    /**
     * Retrieve all posts with their comments, using caching for better performance.
     * 
     * @return \Illuminate\Http\JsonResponse
     */
    public function index() {
        // Cache the query for posts with comments for 10 minutes to reduce database load
        $post = Cache::remember('posts_with_comments', 600, function() {
            return Post::with('comments')->paginate(10);
        });

        return response()->json([
            'message' => 'Successfully retrieved all posts',
            'post' => $post
        ]);
    }

    /**
     * Store a new post in the database with data validation and security checks.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request) {
        // Validate request data
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'body' => 'required|string',
        ]);

        // Set the authenticated user's ID to ensure data security
        $data['user_id'] = auth()->id();

        // Create a new post and clear the cache for consistency
        $post = Post::create($data);
        Cache::forget('posts_with_comments'); // Clear cached posts

        return response()->json([
            'message' => 'Post created successfully',
            'post' => $post
        ], 201);
    }

    /**
     * Update an existing post with data validation and security checks.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Post $post
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request, $id) {
        $post = Post::findOrFail($id);
        if ($post->user_id !== auth()->id()) {
            
            return response()->json([
                'message' => 'Unauthorized',
                'error' => 'You are not authorized to update this post user ' . $post->user_id . ' and authenticated user is ' . auth()->id()
            ], 403);
        }

        // Validate data
        $data = $request->validate([
            'title' => 'string|max:255',
            'body' => 'string',
        ]);

        $post->update($data);
        Cache::forget('posts_with_comments'); 

        return response()->json([
            'message' => 'Post updated successfully',
            'post' => $post
        ]);
    }

    /**
     * Delete an existing post, ensuring authorization and consistency of cached data.
     *
     * @param  Post $post
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy( $id) {
        $post = Post::findOrFail($id);
        // Ensure only the owner can delete the post
        if ($post->user_id !== auth()->id()) {
            return response()->json([
                'message' => 'Unauthorized',
                'error' => 'You are not authorized to delete this post'
            ], 403);
        }

        $post->delete();
        Cache::forget('posts_with_comments'); // Clear cached posts after deletion

        return response()->json(['message' => 'Post deleted successfully']);
    }
}

