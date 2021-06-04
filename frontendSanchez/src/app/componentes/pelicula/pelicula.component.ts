import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { TmdbService } from 'src/app/servicios/tmdb.service';

@Component({
  selector: 'app-pelicula',
  templateUrl: './pelicula.component.html',
  styleUrls: ['./pelicula.component.css']
})
export class PeliculaComponent implements OnInit {
  pelicula:any;
  id:string;
  constructor(private tmdb:TmdbService, private rutaActiva: ActivatedRoute) { }

  ngOnInit(): void {
    this.id = this.rutaActiva.snapshot.paramMap.get("id");
    this.buscarPelicula();
  }

  buscarPelicula(){
    this.tmdb.obtener_pelicula(this.id).subscribe(
      respuesta=>{
        console.log(respuesta)
        this.pelicula=respuesta;
      },
      error=>console.log(error)
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
}
