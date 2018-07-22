//
//  ViewController.swift
//  FunFacts
//
//  Created by Spoke on 2018/7/11.
//  Copyright © 2018年 Spoke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var assignmentLabel: UILabel!
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factProvider.randomFact()
        assignmentLabel.text = factProvider.randomText()
    }


    
    
    @IBAction func showFact(_ sender: Any) {
        print("You pressed me!")
        
        funFactLabel.text = factProvider.randomFact()
        assignmentLabel.text = factProvider.randomText()
        let randomColor = colorProvider.randomColor()
        
        // ViewController 不需知道隨機產生顏色如何計算，只需要將預呈現的資料放到view上，
        // 所以另開Struct 在裡面做計算 接著在這邊使用。 跟要顯示Label文字資料儲存方式依樣。

        self.view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
}

