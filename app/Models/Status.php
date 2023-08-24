<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Point;

class Status extends Model
{
    use HasFactory;

    public function points() {
        return $this->hasMany(Point::class);
    }
}
