import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { TmdbService } from 'src/app/servicios/tmdb.service';

@Component({
  selector: 'app-listas-usuarios',
  templateUrl: './listas-usuarios.component.html',
  styleUrls: ['./listas-usuarios.component.css']
})
export class ListasUsuariosComponent implements OnInit {

  peliculas:any[]=[];
  series:any[]=[];
  verPeliculas:boolean=true;
  verSeries:boolean=false;
  mensaje:string;
  respuestaCreada:boolean=false;

  constructor(private tmdb:TmdbService, private irHacia:Router) { }

  ngOnInit(): void {
    this.misPeliculas();
    this.misSeries();
  }

  misPeliculas():void{
    this.tmdb.listaPeliculas().subscribe(
      respuesta=>{
        this.peliculas = respuesta;
      },
      error=>console.log(error)
    );
  }

  misSeries():void{
    this.tmdb.listaSeries().subscribe(
      respuesta=>{
        this.series = respuesta;
      },
      error=>console.log(error)
    );
  }

  pendientes(tipo:string):void{
    this.tmdb.pendientes(tipo).subscribe(
      respuesta=>{
        if(tipo=='pelicula')this.peliculas = respuesta;
        else this.series = respuesta;
      },
      error=>console.log(error)
    );
  }

  vistas(tipo:string):void{
    this.tmdb.vistas(tipo).subscribe(
      respuesta=>{
        if(tipo=='pelicula')this.peliculas = respuesta;
        else this.series = respuesta;
      },
      error=>console.log(error)
    );
  }

  siguiendo(tipo:string):void{
    this.tmdb.siguiendo().subscribe(
      respuesta=>{
        this.series = respuesta;
      },
      error=>console.log(error)
    );
  }

  aniadirTitulo(id,estado):void{
    this.tmdb.aniadirTitulo(id,estado).subscribe(
      respuesta=>{
        console.log(respuesta);
      },
      error=>console.log(error)
    );
  }

  verPelicula(id):void{
    this.irHacia.navigate(['/buscar/pelicula/'+id])
  }

  verSerie(id):void{
    this.irHacia.navigate(['/buscar/serie/'+id])
  }

  cambiarSeries(){
    this.verPeliculas=false;
    this.verSeries=true;
    this.misSeries();
  }

  cambiarPeliculas(){
    this.verPeliculas=true;
    this.verSeries=false;
    this.misPeliculas();
  }

  borrarTituloLista(id, tipo){
    this.tmdb.borrarTituloLista(id).subscribe(
      respuesta=>{
        if(respuesta=='ok'){
          if(tipo=='pelicula'){
            this.misPeliculas();
            this.mensaje='Pelicula borrada';
            this.respuestaCreada=true;
            setTimeout(()=>{this.respuestaCreada=false;this.mensaje=''},3000);
          }else{
            this.misSeries();
            this.mensaje='Serie borrada';
            this.respuestaCreada=true;
            setTimeout(()=>{this.respuestaCreada=false;this.mensaje=''},3000);
          }
        }
      },
      error=>console.log(error)
    );
  }

}
