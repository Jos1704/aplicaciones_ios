//
//  LeerNoticias.swift
//  VideoNoticia
//
//  Created by user182849 on 5/05/21.
//  Copyright © 2021 user182849. All rights reserved.
//

import Foundation


class LeerNoticias{


    func getNoticias(termino:(_ datos:[String])->()){
      let liga = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/arts/30.json?api-key=029bb2ef5c76452bac5b2c3ca06893dd"
      let url = NSURL(string: liga)!
        NSURLSession.sharedSession().dataTaskWithURL(url) { (dato:NSData?, respuesta:URLResponse?, error:NSError?) in
            var titulos:[String] = []
            do{
             let resultado = try NSJSONSerialization.JSONObjectWithData(dato!, options: NSJSONReadingOptions.MutableLeaves) as! NSDictionary
            
                for valor in resultado["results"] as! [NSDictionary]{
                  titulos.append(valor["title"] as! String)
                }
             dispatch_async(dispatch_get_main_queue() , {
                termino(datos: titulos)
             })
            }catch{
              print("Error en lectura")
            }
        }.resume()
        }
    }



