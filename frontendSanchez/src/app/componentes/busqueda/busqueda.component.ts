import { Component, OnInit } from '@angular/core';
import { TmdbService } from 'src/app/servicios/tmdb.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-busqueda',
  templateUrl: './busqueda.component.html',
  styleUrls: ['./busqueda.component.css']
})
export class BusquedaComponent implements OnInit {

  constructor(private tmdb:TmdbService, private rutaActiva: ActivatedRoute, private irHacia:Router) {
    rutaActiva.params.subscribe(val => {
      this.busqueda = this.rutaActiva.snapshot.paramMap.get("query");
      this.cargarBusqueda();
    });
  }
  imageUrl='https://image.tmdb.org/t/p/w300';
  busqueda:string;
  resultados:any[]=[];
  ngOnInit(): void {
    this.busqueda = this.rutaActiva.snapshot.paramMap.get("query");
    this.cargarBusqueda();
  }

  cargarBusqueda():void{
    this.tmdb.cargarBusqueda(this.busqueda).subscribe(
      respuesta=>{
        console.log(respuesta);
        this.resultados=respuesta;
      },error=>console.log(error)
    )
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

}
