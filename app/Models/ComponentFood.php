<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ComponentFood extends Model
{
    use HasFactory;
    protected $table='component_food';
    protected $primarykey='id';
    protected $fillable=['title','slug', 'desc', 'image', 'status', 'status_aktif'];
}
