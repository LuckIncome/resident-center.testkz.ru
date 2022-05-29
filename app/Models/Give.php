<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Citizenship;

class Give extends Model
{
    use HasFactory;

    protected $table = 'give';

    public function citizenship()
    {
        return $this->belongsToMany(Citizenship::class);
    }
}
