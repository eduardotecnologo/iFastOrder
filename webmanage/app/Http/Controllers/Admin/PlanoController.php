<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Plano;
use Illuminate\Http\Request;

class PlanoController extends Controller
{
    private $repository;
    public function __construct(Plano $plano)
    {
        $this->repository = $plano;
    }
    public function index(){
        $planos = $this->repository->all();
        return view('admin.pages.planos.index', [
            'planos' => $planos,
        ]);
    }
}
