import { Component, OnInit } from '@angular/core';
import * as L from 'leaflet';

@Component({
  selector: 'app-sobre-mi',
  templateUrl: './sobre-mi.component.html',
  styleUrls: ['./sobre-mi.component.css']
})
export class SobreMiComponent implements OnInit {

  mapa:any;
  marcador:any;
  constructor() { }

  ngOnInit(): void {
    this.mapa = L.map('posicionMapa').setView([39.383758746966464, -3.2097712749918466], 16)
    L.marker([39.383758746966464, -3.2097712749918466]).addTo(this.mapa).bindPopup('ToWatchList SL');
    const trozos = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{
      maxZoom: 19
    })
    trozos.addTo(this.mapa)
  }

}
