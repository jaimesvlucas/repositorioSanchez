import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { TmdbService } from 'src/app/servicios/tmdb.service'; 
@Component({
  selector: 'app-buscador',
  templateUrl: './buscador.component.html',
  styleUrls: ['./buscador.component.css']
})
export class BuscadorComponent implements OnInit {
  imageUrl='https://image.tmdb.org/t/p/w300';
  popularPeliculas:any[]=[];
  popularSeries:any[]=[];
  netflix:any[]=[];
  disneyPlus:any[]=[];
  primeVideo:any[]=[];
  youtube:any[]=[];
  hbo:any[]=[];
  constructor(private tmdb:TmdbService, private irHacia:Router) { }

  ngOnInit(): void {
    this.peliculas();
    this.series();
    this.plataforma('Netflix');
    this.plataforma('Disney+');
    this.plataforma('Prime video');
    this.plataforma('Youtube');
    this.plataforma('HBO');
  }

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
        if(tipo=='movie')this.popularPeliculas = respuesta.results
        else this.popularSeries = respuesta.results
      },
      error=>console.log(error)
    )
  }

  mejorValorada(tipo:string):void{
    this.tmdb.buscarMejorValoradas(tipo).subscribe(
      respuesta=>{
        if(tipo=='movie')this.mejorValoradaPeliculas = respuesta.results
        else this.mejorValoradaSeries = respuesta.results
      },
      error=>console.log(error)
    )
  }*/

  verPelicula(id):void{
    this.irHacia.navigate(['/buscar/pelicula/'+id])
  }

  verSerie(id):void{
    this.irHacia.navigate(['/buscar/serie/'+id])
  }

  verLista(tipo,atributo):void{
    this.irHacia.navigate(['/listar/'+tipo+'/'+atributo])
  }
}
