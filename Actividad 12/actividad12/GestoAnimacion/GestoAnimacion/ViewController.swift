//
//  ViewController.swift
//  GestoAnimacion
//
//  Created by user182849 on 4/28/21.
//  Copyright © 2021 user182849. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipoGesto: UILabel!
    
    
    @objc func accionGesto(sender: UIGestureRecognizer){
        if sender.isKind(of:UITapGestureRecognizer.self){
   tipoGesto.text = "Tap"
   }
        if sender.isKind(of:UISwipeGestureRecognizer.self){
   tipoGesto.text = "Swipe"
   }
   animacion()
   }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let gestoTap = UITapGestureRecognizer(target: self, action: #selector(accionGesto(sender:)))
        let gestoSwipe = UISwipeGestureRecognizer(target: self, action: #selector(accionGesto(sender:)))
        
        /*
        
         codigo canvas que no jala
         
        let gestoTap = UITapGestureRecognizer(target: self, action:#selector(accionGesto(_:)))

        let gestoSwipe = UISwipeGestureRecognizer(target: self, action:#selector(accionGesto(_:)))

        */
        self.view.addGestureRecognizer(gestoTap)
        self.view.addGestureRecognizer(gestoSwipe)
        
       
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    /*
    func accionGesto(sender: UIGestureRecognizer){
        if sender.isKind(of:UITapGestureRecognizer.self){
   tipoGesto.text = "Tap"
   }
        if sender.isKind(of:UISwipeGestureRecognizer.self){
   tipoGesto.text = "Swipe"
   }
   animacion()
   }
    */
    
    func animacion()
    {
    UIView.animate(withDuration: 3, delay: 0.2, options: [], animations:{self.tipoGesto.alpha = 1.0})
    { _ in self.tipoGesto.alpha = 0.0}
    
    }

    
    
    

}

