<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cloth extends Model
{
    use HasFactory;

    protected $guarded = [];


    public function getNameAttribute()
    {
        $brandName = $this->brand ? strtoupper($this->brand) : '';
        return "$this->color $brandName $this->addition_info";
    }

    public function getFontColorAttribute()
    {
        switch($this->color) {
            case 'black':
            case 'darkblue':
            case 'navy':
            case 'purple':
                return 'white';
            default:
                return 'black';
        }
    }

    public function upper_outfits()
    {
        return $this->hasMany(Outfit::class, 'upper_id', 'id');
    }

    public function lower_outfits()
    {
        return $this->hasMany(Outfit::class, 'lower_id', 'id');
    }

    public function dress_outfits()
    {
        if($this->dress) {
            return $this->hasMany(Outfit::class, 'upper_id', 'id');
        }
        return collect([]);
    }

    public function outfits()
    {
        if($this->upper) {
            return $this->upper_outfits();
        } elseif($this->lower) {
            return $this->lower_outfits();
        } else {
            return $this->dress_outfits();
        }
    }
}
