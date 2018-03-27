//
//  ViewController.swift
//  Dice
//
//  Created by Fetiz Lee on 23/03/2018.
//  Copyright © 2018 Fetiz Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomViceNumber1 : Int = 0
    var randomViceNumber2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageViewer1: UIImageView!
    @IBOutlet weak var diceImageViewer2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDice()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDice()
        
    }
    
    func updateDice() {
        
        randomViceNumber1 = Int(arc4random_uniform(6))
        randomViceNumber2 = Int(arc4random_uniform(6))
        
        diceImageViewer1.image = UIImage(named: diceArray[randomViceNumber1])
        diceImageViewer2.image = UIImage(named: diceArray[randomViceNumber2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDice()
        
    }
    
}

