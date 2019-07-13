//
//  ViewController.swift
//  DiceRoll
//
//  Created by Spur IQ on 7/13/19.
//  Copyright © 2019 Praveena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    
    var diceImages = ["Dice Blue 1", "Dice Blue 2", "Dice Blue 3", "Dice Blue 4", "Dice Blue 5", "Dice Blue 6"]
    var num1 : Int = 0
    var num2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImages()
    }

    func setImages(){
        num1 = Int.random(in: 0...5)
        num2 = Int.random(in: 0...5)
        imageView1.image = UIImage(named: diceImages[num1])
        imageView2.image = UIImage(named: diceImages[num2])
    }
    
    @IBAction func rollButtonClick(_ sender: Any) {
        setImages()
    }
    
}

