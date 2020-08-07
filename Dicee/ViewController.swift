//
//  ViewController.swift
//  Dicee
//
//  Created by GUADALUPE GUERRERO on 7/26/20.
//  Copyright © 2020 GUADALUPE GUERRERO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;
    
    let diceArray = ["one", "two", "three", "four", "five", "six"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
                
        diceImageView1.image = UIImage(named : diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named : diceArray[randomDiceIndex2])
        
    }
 
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

