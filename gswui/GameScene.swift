//
//  GameScene.swift
//  gswui
//
//  Created by john davis on 10/12/24.
//

import SpriteKit

class GameScene: SKScene {

    let square = SKSpriteNode()

    
    override func didMove(to view: SKView) {
        print("game scene loaded")
        
        // create a sprite
        square.size = CGSize(width: 100, height: 50)
        square.color = .red
        square.position = CGPoint(x: 100, y: 200)
        
        addChild(square)
    }
    
    // touch location
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches began")
        
        for touch in touches {
            let location = touch.location(in: self)
            print("touch location: \(location)")
            
            //square.position = location
            
            // glide action
            let glideAction = SKAction.move(to: location, duration: 1.0)
            
            // rotate action
            let rotateAction = SKAction.rotate(byAngle: .pi, duration: 1.0)
            
            let sequenceAction = SKAction.sequence([glideAction, rotateAction])
            square.run(sequenceAction)
            
        }
    }
    
    // follow the touch
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches moved")
        
        for touch in touches {
            let location = touch.location(in: self)
            print("touch location: \(location)")
            let move = SKAction.move(to: location, duration: 0.1)
            square.run(move)
            
        }
    }
}
