//
//  ViewController.swift
//  poemGame
//
//  Created by Xiao Tan on 2/13/16.
//  Copyright © 2016 HackBU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var promptWords = [String]()
    var poems = [[String]]()
    var playerSubmissions = [String]()
    
    @IBOutlet weak var playerNum: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setupButtonControl(sender: UIButton) {
        let numPlayer:Int? = playerNum.text.toInt()
        
        promptWords.insert("blue", atIndex:0)
        promptWords.insert("kite", atIndex:1)
        promptWords.insert("fear", atIndex:2)
        promptWords.insert("cat", atIndex:3)
        promptWords.insert("tree", atIndex:4)
        promptWords.insert("jack", atIndex:5)
        promptWords.insert("cut", atIndex:6)
        promptWords.insert("dot", atIndex:7)
        promptWords.insert("mild", atIndex:8)
        promptWords.insert("air", atIndex:9)
        promptWords.insert("all", atIndex:10)
        promptWords.insert("and", atIndex:11)
        promptWords.insert("jar", atIndex:12)
        promptWords.insert("zap", atIndex:13)
        promptWords.insert("fan", atIndex:14)
        promptWords.insert("make", atIndex:15)
        promptWords.insert("king", atIndex:16)
        promptWords.insert("fit", atIndex:17)
        promptWords.insert("go", atIndex:18)
        promptWords.insert("late", atIndex:19)
        promptWords.insert("low", atIndex:20)
        
        var row1 = [String]()
        row1.append("I love ")
        row1.append("I love ")
        row1.append("I love you so ")
        row1.append("If I had a ")
        row1.append("I'd give you the shell ")
        
        var row2 = [String]()
        row2.append("Please be my ")
        row2.append("I will open for you the ")
        row2.append("I will let you pick my ")
        row2.append("I will hold your hand ")
        row2.append("I will let you touch my ")
        
        var row3 = [String]()
        row3.append("May this bow of ")
        row3.append("Which gives ")
        row3(.append("And which I send ")
        row3.append("A token be of love ")
        row3.append("Oh, will't thou be ")
        
        var row4 = [String]()
        row4.append("Mother's eyes began to ")
        row4.append("And then she made this ")
        row4.append("If you love me as I love ")
        row4.append("No knife shall cut our love in ")
        row4.append("And father laughed and said ")
        
        var row5 = [String]()
        row5.append("The first one says, My love is ")
        row5.append("The second one says, You have my ")
        row5.append("The third one says, We'll never ")
        row5.append("The fourth one says, Won't you please be ")
        row5.append("The fifth one says, Til the end of ")
        
        var row6 = [String]()
        row6.append("Won't you be my ")
        row6.append("And fly away with ")
        row6.append("We'll bumble along ")
        row6.append("Cause you're my Honey ")
        row6.append("Fiddle dee dee, fiddle dee ")
        
        var row7 = [String]()
        row7.append("You're Hershey's, you're ")
        row7.append("You're sweet English ")
        row7.append("If you spit in my ")
        row7.append("You'll just sweeten my ")
        row7.append("That I'm getting ")
        
        var row8 = [String]()
        row8.append("I love ")
        row8.append("I'll kiss you and hug ")
        row8.append("Cause you love me ")
        row8.append("So smile 'cause I love ")
        row8.append("On this Valentine's ")
        
        var row9 = [String]()
        row9.append("When the moon begins to eclipse we'll be in each others ")
        row9.append("I never knew how much of a sweet tart you could ")
        row9.append("There are zero people like ")
        row9.append("You're my lifesaver in this unforgiving ")
        row9.append("I love your little ")
        
        var row10 = [String]()
        row10.append("I want to share all of your ")
        row10.append("Now and later, always and ")
        row10.append("You're all the payday I'll ever ")
        row10.append("I wouldn't trade you for 100 ")
        row10.append("All because I love my sweet ")
        
        var row11 = [String]()
        row11.append("Valentines Day is coming up, and I don't have a valentine, so now what shall I ")
        row11.append("Almost every boy has asked me, everyone but ")
        row11.append("Who is this person you ")
        row11.append("Oh only the boy I've been crushing on since the second ")
        row11.append("He's walking my way, has my day come at ")
        
    }

}

