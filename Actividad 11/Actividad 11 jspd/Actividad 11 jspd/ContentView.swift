//
//  ContentView.swift
//  Actividad 11 jspd
//
//  Created by user182849 on 4/21/21.
//  Copyright © 2021 user182849. All rights reserved.
//

import SwiftUI


private let reuseIdentifier = "celda"

struct ContentView: View {
    var imgNum:[String] = []
    let numeros:[String] = []
    
    override func viewDidLoad() {
        for valor in 0...19{
        imgNum.append("\(valor+1)")
        super.viewDidLoad()

        
    




func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return 1
}


    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return imgNum.count
}

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell:Celda = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! Celda

    // Configurar celda
    
    cell.imagenNum.image = UIImage(named: imgNum[indexPath.row])
    return cell
}

        }
        
    }
        
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
