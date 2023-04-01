<?php
/*
 * Creates URL & loads core controller
 * URL FORMAT - /controller/method/params
 */

$url = getUrl();

$file = '../app/controllers/' . ucwords($url[0]) . '.php';
if (file_exists($file)) {
    require_once $file;
    $func = $url[1] ?? 'index';
    unset($url[0], $url[1]);
    $params = $url ? array_values($url) : [];
    call_user_func_array($func, $params);
} else {
    show_404();
}

function getUrl()
{
    if (isset($_GET['url'])) {
        $url = rtrim($_GET['url'], '/');
        $url = filter_var($url, FILTER_SANITIZE_URL);
        $url = explode('/', $url);

        if (!$url) {
            return ['pages', 'index'];
        }
        return $url;
    }
    return ['pages', 'index'];
}

function show_404()
{
    echo "Pages not found";
    die;
}

function view($path, $data = [])
{

    require_once VIEWS_DIR . 'includes/head.php';

    $view = VIEWS_DIR . $path . '.php';
    if (file_exists($view)) {
        require_once $view;
    } else {
        die("View does not exists.");
    }
}

function getModel($path)
{
    $model = MODELS_DIR . $path . '.php';
    if (file_exists($model)) {
        require_once $model;
    } else {
        die("Model does not exists.");
    }
}

function redirectPage($path)
{
    header('location:' . URLROOT . '/' . $path);
}
