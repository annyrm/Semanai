//
//  LocationModel.swift
//  pruebaTurismo
//
//  Created by ITESM CAMPUS TAMPICO on 26/09/16.
//  Copyright © 2016 ITESM CAMPUS TAMPICO. All rights reserved.
//

import Foundation

class LocationModel: NSObject {
    
    //properties
    
    var idsitio: String?
    var nombre: String?
    var descripcion: String?
    var latitud: String?
    var longitud: String?
    var tipo: String?
    var ciudad: String?
    var servicios: String?
    var direccion: String?
    var paginaweb: String?
    var rutaimg: String?
    

    
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @name, @address, @latitude, and @longitude parameters
    
    init(idsitio: String, nombre: String, descripcion: String, latitud: String, longitud: String, tipo: String, ciudad: String, servicios: String, direccion: String, paginaweb: String, rutaimg:String) {
        
        self.idsitio = idsitio
        self.nombre = nombre
        self.descripcion = descripcion
        self.latitud = latitud
        self.longitud = longitud
        self.tipo = tipo
        self.ciudad = ciudad
        self.servicios = servicios
        self.direccion = direccion
        self.paginaweb = paginaweb
        self.rutaimg = rutaimg
        
    }
    
    
    //prints object's current state
    
    override var description: String {
        return "Nombre: \(nombre), Descripcion: \(descripcion), Latitud: \(latitud), Longitud: \(longitud), Ciudad: \(ciudad), Ciudad: \(servicios), Ciudad: \(direccion), Pagina Web: \(paginaweb)"
        
    }
    
    
}