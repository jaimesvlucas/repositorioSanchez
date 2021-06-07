<?php
session_start();

/* Incluimos modelos, controladores y config.php */
require_once '../backendSanchez/app/Config.php';
require_once '../backendSanchez/app/Cors.php';
require_once '../backendSanchez/app/models/Conexion.php';
require_once '../backendSanchez/app/models/Usuarios.php';
require_once '../backendSanchez/app/models/Session.php';
require_once '../backendSanchez/app/controllers/ControladorUsuarios.php';
require_once '../backendSanchez/app/controllers/ControladorTitulos.php';
require_once '../backendSanchez/app/models/Usuarios.php';
require_once '../backendSanchez/app/models/Titulos.php';
require_once '../backendSanchez/app/models/funciones.php';
require_once '../backendSanchez/app/vendor/autoload.php'; 
use \Firebase\JWT\JWT;

//Comprueba si hay algún token valido en la cabecera y obtiene el ID del USER
$idUser = null;
if(!empty($_SERVER['HTTP_AUTHORIZATION'])) {
  $jwt = $_SERVER['HTTP_AUTHORIZATION'];
  try {
    $JWTraw = JWT::decode($jwt, CJWT, array('HS256'));
    $idUser = $JWTraw->id;
  } catch (Exception $e) { }
}
define('IDUSER', $idUser);
define('ROOT', dirname(__FILE__) . DIRECTORY_SEPARATOR);

$mapa = array(
    'hola' => array('controlador'=>'ControladorUsuarios','metodo'=>'hola', 'publica' => true),
    'login' => array('controlador'=>'ControladorUsuarios','metodo'=>'hacerLogin', 'publica' => true),
    'registrar' => array('controlador'=>'ControladorUsuarios','metodo'=>'registrarUser', 'publica' => true),
    'leerPerfil' => array('controlador'=>'ControladorUsuarios','metodo'=>'leerPerfil', 'publica' => true),
    'editarPerfil' => array('controlador'=>'ControladorUsuarios','metodo'=>'editarUser', 'publica' => true),
    'eliminarPerfil' => array('controlador'=>'ControladorUsuarios','metodo'=>'eliminarUser', 'publica' => true),
    'subirImagen' => array('controlador'=>'ControladorUsuarios','metodo'=>'subirAvatar', 'publica' => true),
    'peliculas' => array('controlador'=>'ControladorTitulos','metodo'=>'peliculas', 'publica' => true),
    'series' => array('controlador'=>'ControladorTitulos','metodo'=>'series', 'publica' => true),
    'plataforma' => array('controlador'=>'ControladorTitulos','metodo'=>'plataforma', 'publica' => true),
    'pelicula' => array('controlador'=>'ControladorTitulos','metodo'=>'pelicula', 'publica' => true),
    'serie' => array('controlador'=>'ControladorTitulos','metodo'=>'serie', 'publica' => true),
    'busqueda' => array('controlador'=>'ControladorTitulos','metodo'=>'busqueda', 'publica' => true),
    'aniadirTitulo' => array('controlador'=>'ControladorTitulos','metodo'=>'aniadirTitulo', 'publica' => true),
    'listaPeliculas' => array('controlador'=>'ControladorTitulos','metodo'=>'listaPeliculas', 'publica' => true),
    'listaSeries' => array('controlador'=>'ControladorTitulos','metodo'=>'listaSeries', 'publica' => true),
    'pendientes' => array('controlador'=>'ControladorTitulos','metodo'=>'pendientes', 'publica' => true),
    'vistas' => array('controlador'=>'ControladorTitulos','metodo'=>'vistas', 'publica' => true),
    'siguiendo' => array('controlador'=>'ControladorTitulos','metodo'=>'siguiendo', 'publica' => true),
    'borrarTituloLista' => array('controlador'=>'ControladorTitulos','metodo'=>'borrarTituloLista', 'publica' => true),
    );

//Parseo de la ruta
if(!empty($_GET['accion'])){
    if(isset($mapa[$_GET['accion']])){
        $accion = $_GET['accion'];
    }
    else{
        $accion = 'hola';
    }
}
else{
    $accion = 'hola';    //Acción por defecto
}

//Si no ha iniciado sesión pero sí tiene cookie, iniciamos la sesión de forma automática
/*if(!Session::esta_iniciada() && Session::existe_cookie()){
    $gu = new GestorUsuario(Conexion::conectar());
    if($usuario = $gu->obtener_uid(Session::obtener_cookie())){
        Session::iniciar($usuario);
    }
}

if(!Session::esta_iniciada() && !$mapa[$accion]['publica']) {
    MensajeFlash::anadir_mensaje("Debes iniciar sesión para entrar en la página $accion.");
    header("Location: listar_mensajes");
    die();
}*/

$clase_controlador = $mapa[$accion]['controlador'];
$metodo_controlador = $mapa[$accion]['metodo'];
//Ejecutamos el método del controlador
$objeto = new $clase_controlador();
$objeto->$metodo_controlador();