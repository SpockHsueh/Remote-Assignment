//
//  BackgroundColorProvider.swift
//  FunFacts
//
//  Created by Spoke on 2018/7/11.
//  Copyright © 2018年 Spoke. All rights reserved.
//

import UIKit

struct BackgroundColorProvider {
    
    
    func randomColor() -> UIColor {
        let randonRed = Double(arc4random_uniform(255))
        let randonGreen = Double(arc4random_uniform(255))
        let randonBlue = Double(arc4random_uniform(255))
        
        let randomColor = UIColor(red: CGFloat(randonRed/255.0), green: CGFloat(randonGreen/255.0), blue: CGFloat(randonBlue/255.0), alpha: 1)

        return randomColor
    }
}
