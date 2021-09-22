<?php

namespace App\Observers;

use Illuminate\Support\Str;
use App\Models\Plano;

class PlanoObserver
{
    /**
     * Handle the plano "creating" event.
     *
     * @param  \App\Models\Plano  $plano
     * @return void
     */
    public function creating(Plano $plano)
    {
        $plano->url = Str::kebab($plano->name);
    }

    /**
     * Handle the plano "updating" event.
     *
     * @param  \App\Models\Plano  $plano
     * @return void
     */
    public function updating(Plano $plano)
    {
        $plano->url = Str::kebab($plano->name);
    }

    /**
     * Handle the plano "deleted" event.
     *
     * @param  \App\Models\Plano  $plano
     * @return void
     */
    public function deleted(Plano $plano)
    {
        //
    }

    /**
     * Handle the plano "restored" event.
     *
     * @param  \App\Models\Plano  $plano
     * @return void
     */
    public function restored(Plano $plano)
    {
        //
    }

    /**
     * Handle the plano "force deleted" event.
     *
     * @param  \App\Models\Plano  $plano
     * @return void
     */
    public function forceDeleted(Plano $plano)
    {
        //
    }
}
