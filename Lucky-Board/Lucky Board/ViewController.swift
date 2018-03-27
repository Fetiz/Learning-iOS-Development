//
//  ViewController.swift
//  Lucky Board
//
//  Created by Fetiz Lee on 14/03/2018.
//  Copyright © 2018 Fetiz Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var luckyNumberOutlet: UILabel!
    
    
    @IBAction func luckyNumberGenerator(_ sender: Any) {
    let a = arc4random_uniform(100)
        luckyNumberOutlet.text = String(a)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

