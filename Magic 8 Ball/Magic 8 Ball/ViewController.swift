//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Fetiz Lee on 27/03/2018.
//  Copyright © 2018 Fetiz Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNum = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var ballImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateBall()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressToAsk(_ sender: Any) {
       
        updateBall()
        
    }
    
    func updateBall()  {
        
        randomNum = Int(arc4random_uniform(UInt32(ballArray.count)))
        ballImage.image = UIImage(named: ballArray[randomNum])
        
    }
    
    
    
    
    
    
    
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateBall()
        
    }

}

