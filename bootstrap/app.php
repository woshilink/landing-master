<?php

require_once __DIR__.'/../vendor/autoload.php';

try {
    (new Dotenv\Dotenv(__DIR__.'/../'))->load();
} catch (Dotenv\Exception\InvalidPathException $e) {
    //
}

/*
|--------------------------------------------------------------------------
| Create The Application
|--------------------------------------------------------------------------
|
| Here we will load the environment and create the application instance
| that serves as the central piece of this framework. We'll use this
| application as an "IoC" container and router for this framework.
|
*/

$app = new Laravel\Lumen\Application(
    realpath(__DIR__.'/../')
);

 $app->withFacades();

 $app->withEloquent();

/*
|--------------------------------------------------------------------------
| Register Container Bindings
|--------------------------------------------------------------------------
|
| Now we will register a few bindings in the service container. We will
| register the exception handler and the console kernel. You may add
| your own bindings here if you like or you can make another file.
|
*/

$app->singleton(
    Illuminate\Contracts\Debug\ExceptionHandler::class,
    App\Exceptions\Handler::class
);

$app->singleton(
    Illuminate\Contracts\Console\Kernel::class,
    App\Console\Kernel::class
);

/*
|--------------------------------------------------------------------------
| Register Middleware
|--------------------------------------------------------------------------
|
| Next, we will register the middleware with the application. These can
| be global middleware that run before and after each request into a
| route or middleware that'll be assigned to some specific routes.
|
*/

// $app->middleware([
//    App\Http\Middleware\ExampleMiddleware::class
// ]);

$app->routeMiddleware([
     'auth' => App\Http\Middleware\Authenticate::class,
]);

$app->routeMiddleware([
    'authToken' => App\Http\Middleware\AuthToken::class,
]);

/*
|--------------------------------------------------------------------------
| Register Service Providers
|--------------------------------------------------------------------------
|
| Here we will register all of the application's service providers which
| are used to bind services into the container. Service providers are
| totally optional, so you are not required to uncomment this line.
|
*/

$app->register(App\Providers\AppServiceProvider::class);
$app->register(App\Providers\AuthServiceProvider::class);
// $app->register(App\Providers\EventServiceProvider::class);
$app->configure('laravel-smarty');
$app->register(Ytake\LaravelSmarty\SmartyServiceProvider::class);
$app->register(Ytake\LaravelSmarty\SmartyConsoleServiceProvider::class);

/*
|--------------------------------------------------------------------------
| Load The Application Routes
|--------------------------------------------------------------------------
|
| Next we will include the routes file so that they can all be added to
| the application. This will provide all of the URLs the application
| can respond to, as well as the controllers that may handle them.
|
*/

$app->group(['namespace' => 'App\Http\Controllers'], function ($app) {
    require __DIR__.'/../routes/web.php';

    $app->group(['namespace' => 'Api'], function ($app) {
        $app->group(['prefix' => 'api'], function () use ($app) {
            require __DIR__.'/../routes/api.php';
        });
    });

    $app->group(['namespace' => 'Admin'], function ($app) {
        $app->group(['prefix' => 'admin'], function () use ($app) {
            require __DIR__.'/../routes/admin.php';
        });
    });

    $app->group(['namespace' => 'Html5'], function ($app) {
        $app->group(['prefix' => 'html5'], function () use ($app) {
            require __DIR__.'/../routes/html5.php';
        });
    });

    $app->group(['namespace' => 'Liveodds'], function ($app) {
        $app->group(['prefix' => 'liveodds'], function () use ($app) {
            require __DIR__.'/../routes/liveodds.php';
        });
    });
});



return $app;
