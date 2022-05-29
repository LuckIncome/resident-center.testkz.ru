<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\EducationContent;

class Education extends Model
{
    use HasFactory;
    protected $table = 'education';

    public function education_content()
    {
      return $this->hasMany(EducationContent::class);
    }
}
