<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Titulos
 *
 * @author User
 */
class Titulos {
    private $conn;

    function __construct($conn) {
        $this->conn = $conn;
    }
    
    function obtener_peliculas(){
        $conn = $this->conn;
        $result=array();
        if(!$sqlPeliculas = $conn->query("SELECT t.*, n.nota, ti.imagen "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "WHERE t.tipo='pelicula' GROUP BY t.id ORDER BY n.nota DESC")){
            die("Error en la sql: " . $this->conn->error);
        }
        $peliculas = $sqlPeliculas->fetch_all(MYSQLI_ASSOC);
        foreach($peliculas as $pelicula){
            $id_pelicula=$pelicula['id'];
            $sqlGeneros = $conn->query("SELECT ge.descripcion "
                    . "FROM titulos t INNER JOIN generos g ON t.id=g.titulo_id "
                    . "INNER JOIN generos_des ge ON g.genero_id=ge.id "
                    . "WHERE t.id = $id_pelicula");
            $generos = $sqlGeneros->fetch_all(MYSQLI_ASSOC);
            $pelicula['GENEROS']=$generos;
            $sqlDirectores = $conn->query("SELECT n.*,ni.imagen "
                    . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                    . "INNER JOIN directores d ON n.id=d.nombre_id "
                    . "INNER JOIN titulos t ON d.titulo_id = t.id "
                    . "WHERE t.id = $id_pelicula");
            $directores = $sqlDirectores->fetch_all(MYSQLI_ASSOC);
            $pelicula['DIRECTORES']=$directores;
            $sqlEscritores = $conn->query("SELECT n.*,ni.imagen "
                    . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                    . "INNER JOIN escritores d ON n.id=d.nombre_id "
                    . "INNER JOIN titulos t ON d.titulo_id = t.id "
                    . "WHERE t.id = $id_pelicula");
            $escritores = $sqlEscritores->fetch_all(MYSQLI_ASSOC);
            $pelicula['ESCRITORES']=$escritores;
            $sqlActores = $conn->query("SELECT n.*,ni.imagen "
                    . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                    . "INNER JOIN actores d ON n.id=d.nombre_id "
                    . "INNER JOIN titulos t ON d.titulo_id = t.id "
                    . "WHERE t.id = $id_pelicula");
            $actores = $sqlActores->fetch_all(MYSQLI_ASSOC);
            $pelicula['ACTORES']=$actores;
            array_push($result,$pelicula);
        }
        return $result;
    }
    
    function obtener_series(){
        $conn = $this->conn;
        $result=array();
        if(!$sqlSeries = $conn->query("SELECT t.*, n.nota, ti.imagen, temp.numero_temporadas, temp.num_episodios "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "INNER JOIN temporadas temp ON t.id=temp.titulo_id "
                                . "WHERE t.tipo='serie' GROUP BY t.id ORDER BY n.nota DESC")){
            die("Error en la sql: " . $this->conn->error);
        }
        $series = $sqlSeries->fetch_all(MYSQLI_ASSOC);
        foreach ($series as $serie){
            $id_serie=$serie['id'];
            $sqlGeneros = $conn->query("SELECT ge.descripcion "
                    . "FROM titulos t INNER JOIN generos g ON t.id=g.titulo_id "
                    . "INNER JOIN generos_des ge ON g.genero_id=ge.id "
                    . "WHERE t.id = $id_serie");
            $generos = $sqlGeneros->fetch_all(MYSQLI_ASSOC);
            $serie['GENEROS']=$generos;
            $sqlCreadores = $conn->query("SELECT n.*,ni.imagen "
                    . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                    . "INNER JOIN creadores d ON n.id=d.nombre_id "
                    . "INNER JOIN titulos t ON d.titulo_id = t.id "
                    . "WHERE t.id = $id_serie");
            $creadores = $sqlCreadores->fetch_all(MYSQLI_ASSOC);
            $serie['CREADORES']=$creadores;
            $sqlActores = $conn->query("SELECT n.*,ni.imagen "
                    . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                    . "INNER JOIN actores d ON n.id=d.nombre_id "
                    . "INNER JOIN titulos t ON d.titulo_id = t.id "
                    . "WHERE t.id = $id_serie");
            $actores = $sqlActores->fetch_all(MYSQLI_ASSOC);
            $serie['ACTORES']=$actores;
            array_push($result,$serie);
        }
        return $result;
    }
    
    function obtener_plataforma($plataforma){
        $conn = $this->conn;
        $result=array();
        if(!$sqlPlataforma = $conn->query("SELECT t.*, n.nota, ti.imagen "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "WHERE t.plataforma='$plataforma' GROUP BY t.id ORDER BY n.nota DESC")){
            die("Error en la sql: " . $this->conn->error);
        }
        $plataforma = $sqlPlataforma->fetch_all(MYSQLI_ASSOC);
        foreach($plataforma as $obj){
            if($obj['tipo']=='pelicula'){
                $pelicula=$obj;
                $id_pelicula=$pelicula['id'];
                $sqlGeneros = $conn->query("SELECT ge.descripcion "
                        . "FROM titulos t INNER JOIN generos g ON t.id=g.titulo_id "
                        . "INNER JOIN generos_des ge ON g.genero_id=ge.id "
                        . "WHERE t.id = $id_pelicula");
                $generos = $sqlGeneros->fetch_all(MYSQLI_ASSOC);
                $pelicula['GENEROS']=$generos;
                $sqlDirectores = $conn->query("SELECT n.*,ni.imagen "
                        . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                        . "INNER JOIN directores d ON n.id=d.nombre_id "
                        . "INNER JOIN titulos t ON d.titulo_id = t.id "
                        . "WHERE t.id = $id_pelicula");
                $directores = $sqlDirectores->fetch_all(MYSQLI_ASSOC);
                $pelicula['DIRECTORES']=$directores;
                $sqlEscritores = $conn->query("SELECT n.*,ni.imagen "
                        . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                        . "INNER JOIN escritores d ON n.id=d.nombre_id "
                        . "INNER JOIN titulos t ON d.titulo_id = t.id "
                        . "WHERE t.id = $id_pelicula");
                $escritores = $sqlEscritores->fetch_all(MYSQLI_ASSOC);
                $pelicula['ESCRITORES']=$escritores;
                $sqlActores = $conn->query("SELECT n.*,ni.imagen "
                        . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                        . "INNER JOIN actores d ON n.id=d.nombre_id "
                        . "INNER JOIN titulos t ON d.titulo_id = t.id "
                        . "WHERE t.id = $id_pelicula");
                $actores = $sqlActores->fetch_all(MYSQLI_ASSOC);
                $pelicula['ACTORES']=$actores;
                array_push($result,$pelicula);
            }else{
                $serie=$obj;
                $id_serie=$serie['id'];
                $sqlTemporadas = $conn->query("SELECT temp.numero_temporadas, temp.num_episodios "
                        . "FROM titulos t INNER JOIN temporadas temp ON t.id=titulo_id "
                        . "WHERE t.id=$id_serie");
                $temporadas = $sqlTemporadas->fetch_all(MYSQLI_ASSOC);
                $serie['temporadas']= $temporadas;
                $sqlGeneros = $conn->query("SELECT ge.descripcion "
                        . "FROM titulos t INNER JOIN generos g ON t.id=g.titulo_id "
                        . "INNER JOIN generos_des ge ON g.genero_id=ge.id "
                        . "WHERE t.id = $id_serie");
                $generos = $sqlGeneros->fetch_all(MYSQLI_ASSOC);
                $serie['GENEROS']=$generos;
                $sqlCreadores = $conn->query("SELECT n.*,ni.imagen "
                        . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                        . "INNER JOIN creadores d ON n.id=d.nombre_id "
                        . "INNER JOIN titulos t ON d.titulo_id = t.id "
                        . "WHERE t.id = $id_serie");
                $creadores = $sqlCreadores->fetch_all(MYSQLI_ASSOC);
                $serie['CREADORES']=$creadores;
                $sqlActores = $conn->query("SELECT n.*,ni.imagen "
                        . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                        . "INNER JOIN actores d ON n.id=d.nombre_id "
                        . "INNER JOIN titulos t ON d.titulo_id = t.id "
                        . "WHERE t.id = $id_serie");
                $actores = $sqlActores->fetch_all(MYSQLI_ASSOC);
                $serie['ACTORES']=$actores;
                array_push($result,$serie);
            }
        }
        return $result;
    }
    
    function busqueda($query){
        $conn = $this->conn;
        $query = explode(" ", $query);
        $busqueda="";
        for($i=0;$i<count($query);$i++){
            if ($i == 0) {
                $busqueda .= "%" . $query[$i] . "%";
            } else {
                $busqueda .= " %" . $query[$i] . "%";
            }
        }
        $sqlDirectores="SELECT t.*, n.nota, ti.imagen "
                    . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                    . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                    . "INNER JOIN directores d ON t.id=d.titulo_id "
                    . "INNER JOIN nombres nb ON nb.id = d.nombre_id "
                    . "WHERE t.titulo LIKE '".$busqueda."' OR "
                    . "t.titulo_original LIKE '".$busqueda."' OR "
                    . "t.plataforma LIKE '".$busqueda."' OR "
                    . "nb.nombre LIKE '".$busqueda."'";
        
        $sqlActores="SELECT t.*, n.nota, ti.imagen "
                    . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                    . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                    . "INNER JOIN actores d ON t.id=d.titulo_id "
                    . "INNER JOIN nombres nb ON nb.id = d.nombre_id "
                    . "WHERE t.titulo LIKE '".$busqueda."' OR "
                    . "t.titulo_original LIKE '".$busqueda."' OR "
                    . "t.plataforma LIKE '".$busqueda."' OR "
                    . "nb.nombre LIKE '".$busqueda."'";
        
        $sqlEscritores="SELECT t.*, n.nota, ti.imagen "
                    . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                    . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                    . "INNER JOIN escritores d ON t.id=d.titulo_id "
                    . "INNER JOIN nombres nb ON nb.id = d.nombre_id "
                    . "WHERE t.titulo LIKE '".$busqueda."' OR "
                    . "t.titulo_original LIKE '".$busqueda."' OR "
                    . "t.plataforma LIKE '".$busqueda."' OR "
                    . "nb.nombre LIKE '".$busqueda."'";
        
        $sqlCreadores="SELECT t.*, n.nota, ti.imagen "
                    . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                    . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                    . "INNER JOIN actores d ON t.id=d.titulo_id "
                    . "INNER JOIN nombres nb ON nb.id = d.nombre_id "
                    . "WHERE t.titulo LIKE '".$busqueda."' OR "
                    . "t.titulo_original LIKE '".$busqueda."' OR "
                    . "t.plataforma LIKE '".$busqueda."' OR "
                    . "nb.nombre LIKE '".$busqueda."'";
        
        $sqlBusqueda=$sqlDirectores." UNION ".$sqlActores." UNION ".$sqlEscritores." UNION ".$sqlCreadores." GROUP BY t.id";
        if(!$resultado=$conn->query($sqlBusqueda)){
            die("Error en la sql: " . $this->conn->error);
        }
        return $resultado->fetch_all(MYSQLI_ASSOC);
    }
    
    function pelicula($id_pelicula){
        $conn = $this->conn;
        if(!$sqlPeliculas = $conn->query("SELECT t.*, n.nota, ti.imagen "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "WHERE t.id=$id_pelicula")){
            die("Error en la sql: " . $this->conn->error);
        }
        $pelicula = $sqlPeliculas->fetch_all(MYSQLI_ASSOC);
        $sqlGeneros = $conn->query("SELECT ge.descripcion "
                    . "FROM titulos t INNER JOIN generos g ON t.id=g.titulo_id "
                    . "INNER JOIN generos_des ge ON g.genero_id=ge.id "
                    . "WHERE t.id = $id_pelicula");
        $generos = $sqlGeneros->fetch_all(MYSQLI_ASSOC);
        $pelicula['GENEROS']=$generos;
        $sqlDirectores = $conn->query("SELECT n.*,ni.imagen "
                . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                . "INNER JOIN directores d ON n.id=d.nombre_id "
                . "INNER JOIN titulos t ON d.titulo_id = t.id "
                . "WHERE t.id = $id_pelicula");
        $directores = $sqlDirectores->fetch_all(MYSQLI_ASSOC);
        $pelicula['DIRECTORES']=$directores;
        $sqlEscritores = $conn->query("SELECT n.*,ni.imagen "
                . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                . "INNER JOIN escritores d ON n.id=d.nombre_id "
                . "INNER JOIN titulos t ON d.titulo_id = t.id "
                . "WHERE t.id = $id_pelicula");
        $escritores = $sqlEscritores->fetch_all(MYSQLI_ASSOC);
        $pelicula['ESCRITORES']=$escritores;
        $sqlActores = $conn->query("SELECT n.*,ni.imagen "
                . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                . "INNER JOIN actores d ON n.id=d.nombre_id "
                . "INNER JOIN titulos t ON d.titulo_id = t.id "
                . "WHERE t.id = $id_pelicula");
        $actores = $sqlActores->fetch_all(MYSQLI_ASSOC);
        $pelicula['ACTORES']=$actores;
        return $pelicula;
    }
    
    function serie($id_serie){
        $conn = $this->conn;
        if(!$sqlSeries = $conn->query("SELECT t.*, n.nota, ti.imagen, temp.numero_temporadas, temp.num_episodios "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "INNER JOIN temporadas temp ON t.id=temp.titulo_id "
                                . "WHERE t.id=$id_serie")){
            die("Error en la sql: " . $this->conn->error);
        }
        $serie = $sqlSeries->fetch_all(MYSQLI_ASSOC);
        $sqlGeneros = $conn->query("SELECT ge.descripcion "
                    . "FROM titulos t INNER JOIN generos g ON t.id=g.titulo_id "
                    . "INNER JOIN generos_des ge ON g.genero_id=ge.id "
                    . "WHERE t.id = $id_serie");
        $generos = $sqlGeneros->fetch_all(MYSQLI_ASSOC);
        $serie['GENEROS']=$generos;
        $sqlCreadores = $conn->query("SELECT n.*,ni.imagen "
                . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                . "INNER JOIN creadores d ON n.id=d.nombre_id "
                . "INNER JOIN titulos t ON d.titulo_id = t.id "
                . "WHERE t.id = $id_serie");
        $creadores = $sqlCreadores->fetch_all(MYSQLI_ASSOC);
        $serie['CREADORES']=$creadores;
        $sqlActores = $conn->query("SELECT n.*,ni.imagen "
                . "FROM nombres n INNER JOIN nombres_imagenes ni ON n.id=ni.nombre_id "
                . "INNER JOIN actores d ON n.id=d.nombre_id "
                . "INNER JOIN titulos t ON d.titulo_id = t.id "
                . "WHERE t.id = $id_serie");
        $actores = $sqlActores->fetch_all(MYSQLI_ASSOC);
        $serie['ACTORES']=$actores;
        return $serie;
    }
    
    function aniadirTitulo($id,$estado){
        $conn = $this->conn;
        $respuesta = "ok";
        $sqlComprobacion = $conn->query("SELECT COUNT(titulo_id) as COMPROBACION  FROM listas_usuarios WHERE titulo_id=$id AND usuario_id=".IDUSER);
        $comprobacion = $sqlComprobacion->fetch_all(MYSQLI_ASSOC);
        if($comprobacion[0]["COMPROBACION"]=='0'){
            if(!$sqlSeries = $conn->query("INSERT INTO listas_usuarios (USUARIO_ID, TITULO_ID, ESTADO) VALUES ('".IDUSER."', '$id', '$estado');")){
                $respuesta="Error en la sql: " . $this->conn->error;
            }
        }else{
            if(!$sqlSeries = $conn->query("UPDATE listas_usuarios SET estado='$estado' WHERE titulo_id=$id AND usuario_id=".IDUSER)){
                $respuesta="Error en la sql: " . $this->conn->error;
            }
        }
        
        return $respuesta;
    }
    
    function listaPeliculas(){
        $conn = $this->conn;
        if(!$sqlPeliculas = $conn->query("SELECT t.*, n.nota, ti.imagen "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "INNER JOIN listas_usuarios lu ON t.id=lu.titulo_id "
                                . "INNER JOIN users u on lu.usuario_id=u.id "
                                . "WHERE t.tipo='pelicula' AND u.id=".IDUSER." ORDER BY n.nota DESC")){
            die("Error en la sql: " . $this->conn->error);
        }
        $peliculas = $sqlPeliculas->fetch_all(MYSQLI_ASSOC);
        return $peliculas;
    }
    
    function listaSeries(){
        $conn = $this->conn;
        if(!$sqlSeries = $conn->query("SELECT t.*, n.nota, ti.imagen "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "INNER JOIN listas_usuarios lu ON t.id=lu.titulo_id "
                                . "INNER JOIN users u on lu.usuario_id=u.id "
                                . "WHERE t.tipo='serie' AND u.id=".IDUSER." ORDER BY n.nota DESC")){
            die("Error en la sql: " . $this->conn->error);
        }
        $series = $sqlSeries->fetch_all(MYSQLI_ASSOC);
        return $series;
    }
    
    function pendientes($tipo){
        $conn = $this->conn;
        $resultados=null;
        if($tipo=='pelicula'){
            if(!$sqlPeliculas = $conn->query("SELECT t.*, n.nota, ti.imagen "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "INNER JOIN listas_usuarios lu ON t.id=lu.titulo_id "
                                . "INNER JOIN users u on lu.usuario_id=u.id "
                                . "WHERE t.tipo='pelicula' AND lu.estado=1 AND u.id=".IDUSER." ORDER BY n.nota DESC")){
            die("Error en la sql: " . $this->conn->error);
        }
        $resultados = $sqlPeliculas->fetch_all(MYSQLI_ASSOC);
        }else{
            if(!$sqlSeries = $conn->query("SELECT t.*, n.nota, ti.imagen "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "INNER JOIN listas_usuarios lu ON t.id=lu.titulo_id "
                                . "INNER JOIN users u on lu.usuario_id=u.id "
                                . "WHERE t.tipo='serie' AND lu.estado=1 AND u.id=".IDUSER." ORDER BY n.nota DESC")){
            die("Error en la sql: " . $this->conn->error);
        }
        $resultados = $sqlSeries->fetch_all(MYSQLI_ASSOC);
        }
        return $resultados;
    }
    
    function vistas($tipo){
        $conn = $this->conn;
        $resultados=null;
        if($tipo=='pelicula'){
            if(!$sqlPeliculas = $conn->query("SELECT t.*, n.nota, ti.imagen "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "INNER JOIN listas_usuarios lu ON t.id=lu.titulo_id "
                                . "INNER JOIN users u on lu.usuario_id=u.id "
                                . "WHERE t.tipo='pelicula' AND lu.estado=2 AND u.id=".IDUSER." ORDER BY n.nota DESC")){
            die("Error en la sql: " . $this->conn->error);
        }
        $resultados = $sqlPeliculas->fetch_all(MYSQLI_ASSOC);
        }else{
            if(!$sqlSeries = $conn->query("SELECT t.*, n.nota, ti.imagen "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "INNER JOIN listas_usuarios lu ON t.id=lu.titulo_id "
                                . "INNER JOIN users u on lu.usuario_id=u.id "
                                . "WHERE t.tipo='serie' AND lu.estado=2 AND u.id=".IDUSER." ORDER BY n.nota DESC")){
            die("Error en la sql: " . $this->conn->error);
        }
        $resultados = $sqlSeries->fetch_all(MYSQLI_ASSOC);
        }
        return $resultados;
    }
    
    function siguiendo(){
        $conn = $this->conn;
         if(!$sqlSeries = $conn->query("SELECT t.*, n.nota, ti.imagen "
                                . "FROM titulos t INNER JOIN notas n ON t.id = n.titulo_id "
                                . "INNER JOIN titulos_imagenes ti ON t.id=ti.titulo_id "
                                . "INNER JOIN listas_usuarios lu ON t.id=lu.titulo_id "
                                . "INNER JOIN users u on lu.usuario_id=u.id "
                                . "WHERE t.tipo='serie' AND lu.estado=3 AND u.id=".IDUSER." ORDER BY n.nota DESC")){
            die("Error en la sql: " . $this->conn->error);
        }
        $resultados = $sqlSeries->fetch_all(MYSQLI_ASSOC);
        return $resultados;
    }
}
