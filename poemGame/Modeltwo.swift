//
//  Modeltwo.swift
//  poemGame
//
//  Created by Rafael Haber on 2/14/16.
//  Copyright © 2016 HackBU. All rights reserved.
//

import Foundation

class Modeltwo {
    var fileString: [String]!
    var fillwords: [String]!
    var players: [Player]!
    var pointer: Int //Points to the judge in the list
    var currPlayer: Int //Points to the current player in the list
    var poem: String
    
    
    init(names: [String]) {
        pointer = 0
        currPlayer = 1
        poem = ""
        fileString = getPoemArray()
        fillwords = getFillWords()
        printPoems()
        makePlayers(names)
    }
    
    //MARK: commands called from outside
    
    //Returns the judge name
    func startRound() -> String {
        players[pointer].setJudge()
        if pointer < players.count - 1 {
            currPlayer = pointer + 1
        }
        else {
            currPlayer = 0
        }
        //poem = getPoem()
        return players[pointer].name
    }
    
    //The current player is the next one in the rotation
    func next()-> Bool {
        if currPlayer + 1 == players.count {
            currPlayer == 0
        }
        else {
            currPlayer += 1
        }
        return currPlayer != pointer
    }
    
    func getCurrLine() -> String{
        //COMPLETE
        return "Finish"
    }
    
    func getCurrPlayerName() -> String {
        return players[currPlayer].name
    }
    
    func setCurrPlayerAns(ans: String) {
        players[currPlayer].setWord(ans)
    }
    
    func getFullPoem() -> String {
        //COMPLETE
        return "Finish"
    }
    
    func endRound(word: String) {
        players[pointer].endJudge()
        if pointer + 1 == players.count {
            pointer = 0
        }
        else {
            pointer += 1
        }
        
        for p in players {
            if p.getWord() == word {
                p.addPoint()
            }
        }
    }
    
    //MARK end list of usable functions
    
    
    
    
    func makePlayers(names: [String]) -> [Player] {
        var plys =  [Player]()
        for nm in names {
            plys.append(Player(name: nm))
        }
        return plys
    }
    
    
    func getPoemArray() -> [String]? {
        if let path = NSBundle.mainBundle().pathForResource("poems", ofType: nil){
            let fm = NSFileManager()
            let exists = fm.fileExistsAtPath(path)
            if(exists){
                let c = fm.contentsAtPath(path)
                let cString = NSString(data: c!, encoding: NSUTF8StringEncoding)
                let str = cString as! String
                return str.componentsSeparatedByString("\n\n")
            }
        }
        return nil
    }
    
    func getFillWords() -> [String]? {
        if let path = NSBundle.mainBundle().pathForResource("blanks", ofType: nil){
            let fm = NSFileManager()
            let exists = fm.fileExistsAtPath(path)
            if(exists){
                let c = fm.contentsAtPath(path)
                let cString = NSString(data: c!, encoding: NSUTF8StringEncoding)
                let str = cString as! String
                return str.componentsSeparatedByString("\n")
            }
        }
        return nil
    }
    
    func getRandWord() {
        
    }
    
    func printPoems() {
        for s in fileString {
            print(s)
        }
    }
}