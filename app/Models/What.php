<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Status;

class What extends Model
{
    use HasFactory;

    protected $table = 'what';

    public function status()
    {
        return $this->belongsToMany(Status::class);
    }
}
