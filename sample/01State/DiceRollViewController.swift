//
//  DiceRollViewController.swift
//  sample
//
//  Created by user on 2021/12/11.
//

import UIKit
import SwiftUI

class DiceRollViewController: UIViewController {
    var diceNumber: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var diceText: UILabel!
    @IBAction func onClickRoll(_ sender: Any) {
        updateDiceText()
        //diceText.text = String(diceNumber)
    }
    
    private func updateDiceText() {
        diceNumber = Int(arc4random() % 6) + 1
    }
}
