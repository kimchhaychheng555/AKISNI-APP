<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserModel extends Model
{
    protected $table = 'data_user';
    protected $primaryKey = 'id';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = [
        'fullName',
        'phoneNumber',
        'username',
        'password',
        'role',
        'profile',
        'active',
        'lastLatitude',
        'lastLongitude',
    ];

    use HasFactory;
}
