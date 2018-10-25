//
//  ViewController.swift
//  NewConcentration
//
//  Created by Fateme' Kazemi on 8/1/1397 AP.
//  Copyright © 1397 Fateme' Kazemi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "🎃", onButton: sender)
        flipCard(withEmoji: "👻", onButton: sender)
    }
    
    func flipCard(withEmoji emoji:String,onButton button:UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }
        else if button.currentTitle == "" {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }


}

