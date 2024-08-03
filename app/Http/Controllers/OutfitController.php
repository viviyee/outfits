<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Cloth;
use App\Models\Outfit;
use Illuminate\Http\Request;

class OutfitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $upper_cloths = Cloth::where('upper', true)
            ->orWhere('dress', true)
            ->get();
        $lower_cloths = Cloth::where('lower', true)->get();
        return view('outfit.index', compact('upper_cloths', 'lower_cloths'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->only('upper_id', 'lower_id', 'date');

        $outfit = Outfit::create($data);

        return redirect()->route('outfit.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Outfit  $outfit
     * @return \Illuminate\Http\Response
     */
    public function show(Outfit $outfit)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Outfit  $outfit
     * @return \Illuminate\Http\Response
     */
    public function edit(Outfit $outfit)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Outfit  $outfit
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Outfit $outfit)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Outfit  $outfit
     * @return \Illuminate\Http\Response
     */
    public function destroy(Outfit $outfit)
    {
        //
    }

    public function bydate()
    {
        $thirtyDaysAgo = Carbon::now()->subDays(30);
        $outfits = Outfit::with(['upper', 'lower'])->where('date', '>=', $thirtyDaysAgo)->get();

        return view('outfit.bydate', compact('outfits'));
    }
}
