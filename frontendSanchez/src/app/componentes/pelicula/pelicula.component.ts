import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { TmdbService } from 'src/app/servicios/tmdb.service';

@Component({
  selector: 'app-pelicula',
  templateUrl: './pelicula.component.html',
  styleUrls: ['./pelicula.component.css']
})
export class PeliculaComponent implements OnInit {
  imageUrl='https://image.tmdb.org/t/p/w780';
  pelicula:any;
  creditos:any;
  id:string;
  constructor(private tmdb:TmdbService, private rutaActiva: ActivatedRoute) { }

  ngOnInit(): void {
    this.id = this.rutaActiva.snapshot.paramMap.get("id");
    this.buscarPelicula();
    this.buscarCreditos();
  }

  buscarPelicula(){
    this.tmdb.buscarPelicula(this.id).subscribe(
      respuesta=>{
        console.log(respuesta)
        this.pelicula=respuesta;
      },
      error=>console.log(error)
    )
  }

  buscarCreditos(){
    this.tmdb.buscarCreditosPeliculas(this.id).subscribe(
      respuesta=>{
        console.log(respuesta);
        this.creditos = respuesta;
      },
      error=>console.log(error)
    )
  }
}
