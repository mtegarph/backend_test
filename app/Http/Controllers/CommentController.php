<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;

class CommentController extends Controller
{
    /**
     * Retrieve all comments for a specified post, using cache for optimization.
     *
     * @param  int $postId
     * @return \Illuminate\Http\JsonResponse
     */
    public function index($postId)
    {
        $comments = Cache::remember("comments_post_{$postId}", 600, function() use ($postId) {
            $post = Post::findOrFail($postId);
            return $post->comments()->with('user')->get();
        });

        return response()->json([
            'message' => 'Comments retrieved successfully',
            'data' => $comments
        ]);
    }

    /**
     * Store a new comment for a specified post, ensuring user association and cache invalidation.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $postId
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request, $postId)
    {
        $request->validate([
            'comment' => 'required|string',
        ]);

        $post = Post::findOrFail($postId);
        $comment = new Comment();
        $comment->comment = $request->comment;
        $comment->post_id = $post->id;
        $comment->user_id = Auth::id();
        $comment->save();

        Cache::forget("comments_post_{$postId}"); // Clear cached comments for the post

        return response()->json([
            'message' => 'Comment created successfully',
            'data' => $comment
        ], 201);
    }

    /**
     * Update an existing comment with authorization checks.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request, $id)
    {
        $comment = Comment::findOrFail($id);

        // Ensure only the owner can update the comment
        if ($comment->user_id !== Auth::id()) {
            return response()->json([
                'message' => 'Unauthorized',
                'error' => 'You are not authorized to update this comment'
            ], 403);
        }

        $request->validate([
            'comment' => 'required|string',
        ]);

        $comment->comment = $request->comment;
        $comment->save();

        Cache::forget("comments_post_{$comment->post_id}"); // Clear cached comments for the post

        return response()->json([
            'message' => 'Comment updated successfully',
            'data' => $comment
        ]);
    }

    /**
     * Delete a comment, ensuring authorization and cache consistency.
     *
     * @param  int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $comment = Comment::findOrFail($id);

        // Ensure only the owner can delete the comment
        if ($comment->user_id !== Auth::id()) {
            return response()->json([
                'message' => 'Unauthorized',
                'error' => 'You are not authorized to delete this comment'
            ], 403);
        }

        $comment->delete();
        Cache::forget("comments_post_{$comment->post_id}"); // Clear cached comments for the post

        return response()->json([
            'message' => 'Comment deleted successfully',
            'data' => null
        ]);
    }
}
