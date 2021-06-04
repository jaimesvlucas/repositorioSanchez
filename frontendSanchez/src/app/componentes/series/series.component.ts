import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { TmdbService } from 'src/app/servicios/tmdb.service';

@Component({
  selector: 'app-series',
  templateUrl: './series.component.html',
  styleUrls: ['./series.component.css']
})
export class SeriesComponent implements OnInit {
  imageUrl='https://image.tmdb.org/t/p/w780';
  serie:any;
  id:string;
  constructor(private tmdb:TmdbService, private rutaActiva: ActivatedRoute) { }

  ngOnInit(): void {
    this.id = this.rutaActiva.snapshot.paramMap.get("id");
    this.buscarSerie();
  }

  buscarSerie(){
    this.tmdb.obtener_serie(this.id).subscribe(
      respuesta=>{
        console.log(respuesta)
        this.serie=respuesta;
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
