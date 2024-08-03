<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Outfit extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function getDayAttribute()
    {
        return Carbon::parse($this->date)->format('l');
    }

    public function getShortDateAttribute()
    {
        return Carbon::parse($this->date)->format('m.d');
    }

    public function upper()
    {
        return $this->belongsTo(Cloth::class, 'upper_id', 'id');
    }

    public function lower()
    {
        return $this->belongsTo(Cloth::class, 'lower_id', 'id');
    }

}
