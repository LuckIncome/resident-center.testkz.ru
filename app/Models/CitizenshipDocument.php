<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CitizenshipDocument extends Model
{
    use HasFactory;

    protected $fillable = ['document_id', 'citizenship_id'];

    protected $table = 'citizenship_document';
}
