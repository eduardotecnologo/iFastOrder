<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Plano extends Model
{
    protected $fillable = ['name','url','price','description'];

    public function search($filter = null){
        $result = $this->where('name','LIKE', "%{$filter}%")
                       ->orWhere('description','LIKE', "%{$filter}%")
                       ->paginate();
        return $result;
    }
}
