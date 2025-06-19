<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Unit extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    // Une unité peut avoir plusieurs utilisateurs
    public function users()
    {
        return $this->hasMany(User::class);
    }
}
