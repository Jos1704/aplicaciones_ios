//
//  GameScene.swift
//  Juego2
//
//  Created by alicharlie on 19/05/16.
//  Copyright (c) 2016 codepix. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
         
         self.backgroundColor = UIColor.darkGray
         let fondo = SKSpriteNode(imageNamed: "fondo2")
                 fondo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
                 fondo.zPosition = -1
                 self.addChild(fondo)
                 let num1 = SKSpriteNode(imageNamed: "1")
           num1.position = CGPoint(x: self.frame.midX, y: self.frame.midY*1.2)
         self.addChild(num1)
     }
     
     
      func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
         
         for touch in touches {
             let location = touch.location(in: self)
             print(location)
         }
     }
     
     override func update(_ currentTime: CFTimeInterval) {
         
     }

}
