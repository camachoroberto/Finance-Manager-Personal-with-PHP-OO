<?php

namespace MYFin\Models;


use Illuminate\Database\Eloquent\Model;

class BillReceive extends Model
{
    //Mass Assigment
    protected $fillable = [
        'date_launch',
        'name',
        'value',
        'user_id'
    ];
}
