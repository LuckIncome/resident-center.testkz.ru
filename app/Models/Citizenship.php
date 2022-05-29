<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Give;
use App\Models\Document;

class Citizenship extends Model
{
    use HasFactory;

    protected $table = 'citizenship';

    public function document()
    {
        return $this->belongsToMany(Document::class);
    }

    public function give()
    {
        return $this->belongsToMany(Give::class);
    }
}
