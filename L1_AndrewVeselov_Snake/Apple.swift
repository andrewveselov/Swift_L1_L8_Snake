//
//  Apple.swift
//  L1_AndrewVeselov_Snake
//
//  Created by Andrew Veselov on 12/04/2019.
//  Copyright © 2019 Andrew Veselov. All rights reserved.
//

import UIKit
import SpriteKit
// Яблоко
class Apple: SKShapeNode {
    //определяем, как оно будет отрисовываться
    convenience init(position: CGPoint) {
        self.init()
        // рисуем круг
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 10, height: 10)).cgPath
        // заливаем красным
        fillColor = UIColor.red
        // рамка тоже красная
        strokeColor = UIColor.red
        // ширина рамки 5 поинтов
        lineWidth = 5
        self.position = position
        self.physicsBody = SKPhysicsBody(circleOfRadius: 10.0, center:CGPoint(x:5, y:5))
        // Категория - яблоко
        self.physicsBody?.categoryBitMask = CollisionCategories.Apple
    }
}
