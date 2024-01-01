<?php

namespace App\Http\Controllers;
use App\Models\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        // Validasi input
        $request->validate([
            'username' => 'required',
            'password' => 'required',
        ]);

        // Lakukan autentikasi
        if (Auth::attempt($request->only('username', 'password'))) {
            // Jika berhasil, dapatkan user yang diotentikasi
            $user = Auth::user();

            return response()->json([
                'success' => true,
                'message' => 'Login berhasil',
                'data' => $user,
                'token' => $user->createToken('token-name')->plainTextToken,
            ], 200);
        }

        // Jika autentikasi gagal
        return response()->json([
            'success' => false,
            'message' => 'Login gagal',
        ], 401);
    }

    public function logout(Request $request)
    {
        $user = Auth::user();
        $user->tokens()->delete(); // Revoke all tokens for the authenticated user

        return response()->json([
            'success' => true,
            'message' => 'Logout berhasil',
        ], 200);
    }
}
