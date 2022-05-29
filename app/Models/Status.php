<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\What;

class Status extends Model
{
    use HasFactory;

    protected $table = 'status';

    public function what()
    {
        return $this->belongsToMany(What::class);
    }

}
