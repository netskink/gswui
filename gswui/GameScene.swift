//
//  GameScene.swift
//  gswui
//
//  Created by john davis on 10/12/24.
//

import SpriteKit

class GameScene: SKScene {


    override func didMove(to view: SKView) {
        self.physicsWorld.gravity = .init(dx: 0, dy: -1.0)
    }
    
    // touch location
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches began")
        
        for touch in touches {
            // create a sprite
            let square = SKSpriteNode()
            square.size = CGSize(width: 100, height: 50)
            square.color = .red
            square.position = touch.location(in: self)
            
            // setup physics properties
            square.physicsBody = SKPhysicsBody(rectangleOf: square.size)
            
            // ensure sprite is affected by gravity
            square.physicsBody?.isDynamic = true
            square.physicsBody?.affectedByGravity = true
            
            addChild(square)

        }
    }
    
}
