//
//  ContentView.swift
//  gswui
//
//  Created by john davis on 10/12/24.
//

import SwiftUI
import _SpriteKit_SwiftUI

struct ContentView: View {
    var body: some View {
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        // define a scene
        var scene: SKScene {
            let scene = GameScene()
            scene.size = CGSize(width: screenWidth, height: screenHeight)
            
            scene.backgroundColor = .clear
            scene.scaleMode = .aspectFill
            
            return scene
        }
        VStack {
            SpriteView(scene: scene) 
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
