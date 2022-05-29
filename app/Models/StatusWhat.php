<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StatusWhat extends Model
{
    use HasFactory;

    protected $fillable = ['what_id', 'status_id'];

    protected $table = 'status_what';
}
