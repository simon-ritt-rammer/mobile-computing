//
//  ViewController.swift
//  NumberGuess
//
//  Created by Simon Ritt-Rammer on 18.11.21.
//

import UIKit

class ViewController: UIViewController {

    var model = NumberGuessModel()
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var guessButton: UIButton!
    
    
    @IBOutlet weak var smilyy: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.target = Int.random(in: 0..<100)
        // Do any additional setup after loading the view.
    }

    
    @IBAction func onEditTextChange(_ sender: UITextField) {
        print("textchanged: \(sender.text)")
        guessButton.isEnabled = model.isValid(string: sender.text)
    }
    
    @IBAction func onButtonPress(_ sender: Any) {
        model.guessCount += 1
        if model.isValid(string: numberInput.text){
            let compare = model.compareTo(to: Int(numberInput.text!)!)
            
            if (compare < 0){
                lable.text = "zu hoch"
            } else if (compare > 0){
                lable.text = "zu niedrig"
            } else{
                lable.text = "Richtig!"
                smilyy.isHidden = false
            }
        
        }
        
    }


}

