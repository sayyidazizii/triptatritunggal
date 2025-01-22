<?php

namespace App\Http\Controllers;

use App\Models\UserLocations;
use Illuminate\Http\Request;

class UserLocationController extends Controller
{
    public function absen(Request $request)
    {
        // Pastikan ada latitude dan longitude yang dikirim dari frontend
        $latitude = $request->input('latitude');
        $longitude = $request->input('longitude');
        $ipAddress = $request->ip();

        // Validasi data yang masuk
        if (!$latitude || !$longitude) {
            return response()->json([
                'success' => false,
                'message' => 'Latitude dan Longitude tidak ditemukan.',
            ], 400);
        }

        // Simpan data absensi ke database
        $absensi = new UserLocations();
        $absensi->latitude = $latitude;
        $absensi->longitude = $longitude;
        $absensi->ip = $ipAddress;
        // echo json_encode($absensi);exit;
        $absensi->save();

        return response()->json([
            'success' => true,
            'message' => 'Absensi berhasil disimpan!',
            'data' => $absensi,
        ]);
    }
}
