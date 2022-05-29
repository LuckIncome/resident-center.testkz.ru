<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\WorkContent;

class Work extends Model
{
    use HasFactory;
    protected $table = 'work';

    public function work_content()
    {
      return $this->hasMany(WorkContent::class);
    }
}
