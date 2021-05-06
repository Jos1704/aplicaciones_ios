//
//  NoticiasVC.swift
//  VideoNoticia
//
//  Created by user182849 on 5/05/21.
//  Copyright © 2021 user182849. All rights reserved.
//

import UIKit


class NoticiasVC: UITableViewController {

    var noticias:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let inset = UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0);
        self.tableView.contentInset = inset
        self.tableView.scrollIndicatorInsets = inset
    
        LeerNoticias().getNoticias { (datos) in
            self.noticias = datos
        }
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let celda = tableView.dequeueReusableCellWithIdentifier("celda", forIndexPath: indexPath as IndexPath)
        
        celda.textLabel!.text = "Cargando..."
        
        return celda
        
    }
    
    
}
