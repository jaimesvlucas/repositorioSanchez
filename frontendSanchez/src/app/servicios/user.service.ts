import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { User, AccesoUsuario } from '../Clases/user';

const url = 'apiSanchez/';
@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private http:HttpClient) { }

  registrar(usuario: User):Observable<any>{
    return this.http.post(url+'registrar',usuario);
  }
  
  acceso(usuario:AccesoUsuario):Observable<any>{
    return this.http.post(url+'login', usuario);
  }

  obtenerPerfil():Observable<any>{
    return this.http.get(url+'leerPerfil')
  }

  editarPerfil(usuario:User):Observable<any>{
    return this.http.post(url+'editarPerfil',usuario);
  }

  eliminarPerfil():Observable<any>{
    return this.http.get(url+'eliminarPerfil');
  }

  listarUsuarios():Observable<any>{
    return this.http.get(url+"list/");
  }

  subirImagen(entrada): Observable<any>{
    return this.http.post(url+'subirImagen', entrada) 
  }

  guardarToken(token:string):void{
    localStorage.setItem('userToken', token);
  }

  isLogged():boolean{
    return !!localStorage.getItem('userToken');
  }

  logOut():void{
    localStorage.removeItem('userToken');
  }

  leerToken():string{
    return localStorage.getItem('userToken');
  }
}
