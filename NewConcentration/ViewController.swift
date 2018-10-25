//
//  ViewController.swift
//  NewConcentration
//
//  Created by Fateme' Kazemi on 8/1/1397 AP.
//  Copyright © 1397 Fateme' Kazemi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var lbFlipCount: UILabel!
    var flipCount = 0 {
        didSet {
            lbFlipCount.text = "flips: \(flipCount)"
        }
    }
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        let cardNumber = cardButtons.index(of: sender)!
        flipCard(withEmoji: emojiChoices[cardNumber], onButton: sender)
    }
    
    
    func flipCard(withEmoji emoji:String,onButton button:UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }


}

