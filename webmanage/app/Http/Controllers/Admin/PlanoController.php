<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Plano;

class PlanoController extends Controller
{
    private $repository;
    public function __construct(Plano $plano)
    {
        $this->repository = $plano;
    }
    public function index(){
        $planos = $this->repository->latest()->paginate(10);
        return view('admin.pages.planos.index', [
            'planos' => $planos,
        ]);
    }
    public function create(){
        return view('admin.pages.planos.create');
    }
    public function store(Request $request){
        $data = $request->all();
        $data['url'] = Str::kebab($request->name);
        $this->repository->create($data);
        return redirect()->route('planos.index');
    }
    public function show($url){
        $plano = $this->repository->where('url', $url)->first();
        if(!$plano)
            return redirect()->back();
            return view('admin.pages.planos.show', [
                'plano' => $plano
            ]);
    }
}
