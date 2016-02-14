//
//  Playertwo.swift
//  poemGame
//
//  Created by Rafael Haber on 2/14/16.
//  Copyright © 2016 HackBU. All rights reserved.
//

import Foundation

class Playertwo {
    var judging: Bool
    var score: Int
    var word: String
    var name: String
    
    init (name: String) {
        self.name = name
        judging = false
        score = 0
        word = ""
    }
    
    
    func setJudge() {
        judging = true
    }
    
    func endJudge() {
        judging = false
    }
    
    
    func addPoint() {
        score += 1
    }
    
    func setWord(word: String?) {
        if let w = word {
            self.word = w
        }
        else {
            self.word = ""
        }
    }
    
    func getWord() -> String {
        return word
    }
}