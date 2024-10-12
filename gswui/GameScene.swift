//
//  GameScene.swift
//  gswui
//
//  Created by john davis on 10/12/24.
//

import SpriteKit

class GameScene: SKScene {


    
    
    // touch location
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches began")
        
        for touch in touches {
            // create a sprite
            let square = SKSpriteNode()
            square.size = CGSize(width: 100, height: 50)
            square.color = .red
            square.position = touch.location(in: self)
            
            addChild(square)

        }
    }
    
}
