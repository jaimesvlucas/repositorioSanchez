import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
const url = 'repositorioSanchez/backendSanchez';
const api='';
@Injectable({
  providedIn: 'root'
})
export class TmdbService {

  constructor(private http:HttpClient) { }

  peliculas():Observable<any>{
    return this.http.get(url+'/peliculas');
  }

  series():Observable<any>{
    return this.http.get(url+'/series');
  }

  titulosPlataforma(plataforma:string):Observable<any>{
    return this.http.post(url+'/plataforma',{ PLATAFORMA: plataforma });
  }
  
  obtener_pelicula(id):Observable<any>{
    return this.http.post(url+'/pelicula',{ ID: id });
  }

  obtener_serie(id):Observable<any>{
    return this.http.post(url+'/serie',{ ID: id });
  }

  cargarBusqueda(query:string):Observable<any>{
    return this.http.post(url+'/busqueda',{QUERY: query});
  }

  aniadirTitulo(id,estado):Observable<any>{
    var datos={ID:id,ESTADO:estado};
    return this.http.post(url+'/aniadirTitulo',datos);
  }

  listaPeliculas():Observable<any>{
    return this.http.get(url+'/listaPeliculas');
  }

  listaSeries():Observable<any>{
    return this.http.get(url+'/listaSeries');
  }

  pendientes(tipo):Observable<any>{
    return this.http.post(url+'/pendientes',{TIPO: tipo});
  }

  vistas(tipo):Observable<any>{
    return this.http.post(url+'/vistas',{TIPO: tipo});
  }

  siguiendo():Observable<any>{
    return this.http.get(url+'/siguiendo');
  }

}
