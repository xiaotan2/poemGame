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
    var players: [Playertwo]!
    var pointer: Int //Points to the judge in the list
    var currPlayer: Int //Points to the current player in the list
    var poem: String
    var randSequ: [Int]!
    
    
    init(names: [String]) {
        pointer = 0
        currPlayer = 1
        poem = ""
        fileString = getPoemArray()
        fillwords = getFillWords()
        //printPoems()
        makePlayers(names)
        lineSequence()
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
        updatePoem()
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
        return poem.componentsSeparatedByString("\n")[randSequ[currPlayer]]
    }
    
    func getCurrPlayerName() -> String {
        return players[currPlayer].name
    }
    
    func setCurrPlayerAns(ans: String) {
        players[currPlayer].setWord(ans)
    }
    
    func getFullPoem() -> String {
        let lis = poem.componentsSeparatedByString("\n")
        var final = ""
        var num = (currPlayer + 1) % players.count
        for i in lis {
            final += i + players[num].getWord() + "\n"
            num = (num + 1) % players.count
        }
        return final
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
    
    
    
    
    func makePlayers(names: [String]) -> [Playertwo] {
        var plys =  [Playertwo]()
        for nm in names {
            plys.append(Playertwo(name: nm))
        }
        return plys
    }
    
    
    func getPoemArray() -> [String]? {
        if let path = NSBundle.mainBundle().pathForResource("poemtwo", ofType: nil){
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
    
    func getRandBlank()->String {
        let place = Int(arc4random_uniform(UInt32(fillwords.count)))
        return fillwords[place]
    }
    
    func updatePoem() {
        let place = Int(arc4random_uniform(UInt32(fileString.count)))
        poem = fileString[place]
    }
    
    func printPoems() {
        for s in fileString {
            print(s)
        }
    }
    
    func lineSequence(){
        var arr = [Int]()
        for x in 0..<players.count {
            arr.append(x)
        }
        for _ in 0..<players.count {
            let temp = arr[0]
            let exchange = Int(arc4random_uniform(UInt32(players.count)))
            arr[0] = arr[exchange]
            arr[exchange] = temp
        }
        randSequ = arr;
    }
}