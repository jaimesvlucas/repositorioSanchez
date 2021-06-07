<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ControladorTitulos
 *
 * @author User
 */
class ControladorTitulos {
    
    function peliculas(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $peliculas = $titulos->obtener_peliculas();
        echo json_encode($peliculas);
    }
    
    function series(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $series = $titulos->obtener_series();
        echo json_encode($series);
    }
    
    function plataforma(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $params = json_decode(file_get_contents('php://input'),true);
        $plataforma=$params['PLATAFORMA'];
        $netflix = $titulos->obtener_plataforma($plataforma);
        echo json_encode($netflix);
    }
    
    function busqueda(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $params = json_decode(file_get_contents('php://input'),true);
        $query=$params['QUERY'];
        $busqueda = $titulos->busqueda($query);
        echo json_encode($busqueda);
    }
    
    function pelicula(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $params = json_decode(file_get_contents('php://input'),true);
        $pelicula_id=$params['ID'];
        $pelicula = $titulos->pelicula($pelicula_id);
        echo json_encode($pelicula);
    }
    
    function serie(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $params = json_decode(file_get_contents('php://input'),true);
        $serie_id=$params['ID'];
        $serie = $titulos->serie($serie_id);
        echo json_encode($serie);
    }
    
    function aniadirTitulo(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $params = json_decode(file_get_contents('php://input'),true);
        $titulo_id=$params['ID'];
        $estado=$params['ESTADO'];
        $result = $titulos->aniadirTitulo($titulo_id,$estado);
        echo json_encode($result);
    }
    
    function listaPeliculas(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $result = $titulos->listaPeliculas();
        echo json_encode($result);
    }
    
    function listaSeries(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $result = $titulos->listaSeries();
        echo json_encode($result);
    }
    
    function pendientes(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $params = json_decode(file_get_contents('php://input'),true);
        $tipo=$params['TIPO'];
        $result = $titulos->pendientes($tipo);
        echo json_encode($result);
    }
    
    function vistas(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $params = json_decode(file_get_contents('php://input'),true);
        $tipo=$params['TIPO'];
        $result = $titulos->vistas($tipo);
        echo json_encode($result);
    }
    
    function siguiendo(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $result = $titulos->siguiendo();
        echo json_encode($result);
    }

    function borrarTituloLista(){
        $conn = Conexion::conectar();
        $titulos = new Titulos($conn);
        $params = json_decode(file_get_contents('php://input'),true);
        $id=$params['ID'];
        $result = $titulos->borrarTituloLista($id);
        echo json_encode($result);
    }
}
