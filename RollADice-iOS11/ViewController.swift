//
//  ViewController.swift
//  RollADice-iOS11
//
//  Created by Sujanth Sebamalaithasan on 19/8/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var diceImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomDice()
    }

    
    @IBAction func rollBtnPressed(_ sender: Any) {
        randomDice()
    }
    
    
    func randomDice() {
        let min: UInt32 = 1
        let max: UInt32 = 7
        let randomNumber = arc4random_uniform(max - min) + min
        label.text = "Rolled a \(randomNumber)"
        diceImage.image = UIImage(named: "Dice\(randomNumber)")
    }

}

