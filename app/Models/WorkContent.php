<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Work;

class WorkContent extends Model
{
    use HasFactory;
    protected $table = 'work_content';

    public function work()
    {
      return $this->belongsTo(Work::class, 'work_id', 'id')->where('status', true);
    }
}
