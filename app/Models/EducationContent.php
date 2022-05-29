<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Education;

class EducationContent extends Model
{
    use HasFactory;
    protected $table = 'education_content';

    protected $fillable = ['education_id', 'title', 'content'];

    public function education()
    {
      return $this->belongsTo(Education::class, 'education_id', 'id')->where('status', true);
    }
}
