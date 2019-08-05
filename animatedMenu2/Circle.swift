//
//  Circle.swift
//  animatedMenu2
//
//  Created by Brandon Wood on 8/5/19.
//  Copyright © 2019 Brandon Wood. All rights reserved.
//

import UIKit

class Circle: UIView {

    
    var fillColor: UIColor = .green
    var strokeColor: UIColor = .blue

    
    override func draw(_ rect: CGRect) {
        drawCircle(rect)
    }
    
    
    private func drawCircle(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
//        strokeColor.setStroke()
        path.lineWidth = 5.0
        path.fill()
//        path.stroke()
    }
    
}
