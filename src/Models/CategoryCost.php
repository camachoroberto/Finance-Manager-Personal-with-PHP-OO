<?php

namespace MYFin\Models;


use Illuminate\Database\Eloquent\Model;

class CategoryCost extends Model
{
    //Mass Assigment
    protected $fillable = [
        'name',
        'user_id'
    ];
}
