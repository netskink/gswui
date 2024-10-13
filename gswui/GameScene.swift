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
        createPlatform()
    }
    
    func createPlatform() {
        let platform = SKSpriteNode()
        platform.size = CGSize(width: 500, height: 50)
        platform.color = .darkGray
        platform.position = .init(x: 150, y: 150)
        
        platform.physicsBody = SKPhysicsBody(rectangleOf: platform.size)
        
        platform.physicsBody?.isDynamic = false
        platform.physicsBody?.restitution = 0.25  // 0.1 is non-bouncy.  0.7 is bouncy
        platform.physicsBody?.affectedByGravity = false
        
        self.addChild(platform)
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
