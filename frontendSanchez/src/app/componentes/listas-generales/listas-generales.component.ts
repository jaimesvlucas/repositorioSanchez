import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { TmdbService } from 'src/app/servicios/tmdb.service';

@Component({
  selector: 'app-listas-generales',
  templateUrl: './listas-generales.component.html',
  styleUrls: ['./listas-generales.component.css']
})
export class ListasGeneralesComponent implements OnInit {
  tipo:string;
  atributo:string;
  imageUrl='https://image.tmdb.org/t/p/w300';
  popularPeliculas:any[]=[];
  popularSeries:any[]=[];
  netflix:any[]=[];
  disneyPlus:any[]=[];
  primeVideo:any[]=[];
  youtube:any[]=[];
  hbo:any[]=[];
  constructor(private tmdb:TmdbService, private rutaActiva: ActivatedRoute, private irHacia:Router) { }

  ngOnInit(): void {
    this.tipo = this.rutaActiva.snapshot.paramMap.get("tipo");
    this.atributo = this.rutaActiva.snapshot.paramMap.get("atributo");
    switch(this.tipo){
      case "pelicula":
        switch(this.atributo){
          case "popular":
            this.peliculas();
            break;
        }
        break;
      case "serie":
        switch(this.atributo){
          case "popular":
            this.series();
            break;
        }
        break;
      case "plataforma":
        switch(this.atributo){
          case "Netflix":
            this.plataforma(this.atributo);
            break;
          case "Disney+":
            this.plataforma(this.atributo);
            break;
          case "Prime video":
            this.plataforma(this.atributo);
            break;
          case "HBO":
            this.plataforma(this.atributo);
            break;
          case "Youtube":
            this.plataforma(this.atributo);
            break;
        }
        break;
    }
  }

  verPelicula(id):void{
    this.irHacia.navigate(['/buscar/pelicula/'+id])
  }

  verSerie(id):void{
    this.irHacia.navigate(['/buscar/serie/'+id])
  }

  aniadirTitulo(id,estado):void{
    this.tmdb.aniadirTitulo(id,estado).subscribe(
      respuesta=>{
        console.log(respuesta);
      },
      error=>console.log(error)
    );
  }
  
  /*
  popular(tipo:string):void{
    this.tmdb.buscarPopulares(tipo).subscribe(
      respuesta=>{
        console.log(respuesta)
        if(tipo=='movie')this.popularPeliculas = respuesta.results
        else this.popularSeries = respuesta.results
      },
      error=>console.log(error)
    )
  }

  mejorValorada(tipo:string):void{
    this.tmdb.buscarMejorValoradas(tipo).subscribe(
      respuesta=>{
        console.log(respuesta)
        if(tipo=='movie')this.mejorValoradaPeliculas = respuesta.results
        else this.mejorValoradaSeries = respuesta.results
      },
      error=>console.log(error)
    )
  }*/

  peliculas():void{
    this.tmdb.peliculas().subscribe(
      respuesta=>{
        this.popularPeliculas = respuesta;
      },
      error=>console.log(error)
    );
  }

  series():void{
    this.tmdb.series().subscribe(
      respuesta=>{
        this.popularSeries = respuesta;
      },
      error=>console.log(error)
    );
  }

  plataforma(plataforma:string):void{
    this.tmdb.titulosPlataforma(plataforma).subscribe(
      respuesta=>{
        switch(plataforma){
          case 'Netflix':this.netflix=respuesta;break;
          case 'Disney+':this.disneyPlus=respuesta;break;
          case 'HBO':this.hbo=respuesta;break;
          case 'Youtube':this.youtube=respuesta;break;
          case 'Prime video':this.primeVideo=respuesta;break;
        }
      },
      error=>console.log(error)
    );
  }

}
