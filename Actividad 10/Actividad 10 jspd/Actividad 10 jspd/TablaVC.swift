//
//  TablaVC.swift
//  Actividad 10 jspd
//
//  Created by user182849 on 4/12/21.
//  Copyright © 2021 user182849 (JOSUE SALVADOR PATIÑO DEGOLLADO). All rights reserved.
//

import UIKit

class TablaVC: UITableViewController {
    let nombres = ["Carlos","Luis","Pedro","Jose"]

     override func viewDidLoad() {
         super.viewDidLoad()
     }

     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
     }

     override func numberOfSections(in tableView: UITableView) -> Int {
         return 1
     }

     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return nombres.count
     }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {
         let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for:indexPath)
         cell.textLabel?.text = nombres [indexPath.row]
         return cell
     }
}
