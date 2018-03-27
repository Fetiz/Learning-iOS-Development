//
//  ViewController.swift
//  Meals
//
//  Created by Fetiz Lee on 26/03/2018.
//  Copyright © 2018 Fetiz Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomNum = 0
    
    let mealsList = ["炒菜", "冒菜", "面条", "串串", "快餐", "荤豆花", "炒饭", "粥", "砂锅", "烧烤", "火锅", "棒棒鸡", "抄手&饺子", "火锅", "凉面店", "沙拉", "胖逼，减肥了" ]
    
    @IBOutlet weak var whatWeEat: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hitMeButton(_ sender: Any) {
        
        updateWhatWeEat()
        
    }
    
    func updateWhatWeEat()  {
        
        randomNum = Int(arc4random_uniform(UInt32(mealsList.count)))
        
        whatWeEat.text = mealsList[randomNum]
        
    }
    

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateWhatWeEat()
    }
    
}

