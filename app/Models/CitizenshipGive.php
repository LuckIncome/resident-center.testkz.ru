<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CitizenshipGive extends Model
{
    use HasFactory;

    protected $fillable = ['give_id', 'citizenship_id'];

    protected $table = 'citizenship_give';
}
