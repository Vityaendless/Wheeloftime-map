<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

use App\Models\Status;

class Point extends Model
{
    use HasFactory;
    use SoftDeletes;

    public function status() {
        return $this->belongsTo(Status::class);
    }

}
