//
//  NumberGuessModel.swift
//  NumberGuess
//
//  Created by Simon Ritt-Rammer on 18.11.21.
//

import Foundation

class NumberGuessModel {
    var target = 0
    var guessCount = 0
    
    func compareTo(to: Int) -> Int{
        return target - to
    }
    
    func isValid(string: String?) -> Bool {
        var isValid = false
        if let str = string, let guess = Int(str){
                if guess >= 1 && guess <= 99{
                    isValid = true
                }
        }
        return isValid
    }
    
    func getImage(from: Int) -> String {
        var image = ""
        if(from < 6){
            image = "smilyy"
        } else if (from < 10){
            image = "smilyy_neutral"
        } else {
            image = "smilyy_sad"
        }
        
        return image
    }
}
