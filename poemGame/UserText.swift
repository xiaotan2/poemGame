//
//  UserText.swift
//  poemGame
//
//  Created by Xiao Tan on 2/13/16.
//  Copyright © 2016 HackBU. All rights reserved.
//

import UIKit

class UserText: MakesModelViewController {

    var counter = 10
    var timer = NSTimer()
    var timerText = UILabel()
    // MARK: Initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize the sentence label
        let sentence = UILabel(frame: CGRect(x:50, y:90, width: 240, height: 80))
        m.next()
            
        
        let sentenceText = m.getCurrLine()
       
        sentence.text = sentenceText + " ______"
        let senSize = sentence.text!.characters.count
        // set up the number of lines
        sentence.numberOfLines = 0
        sentence.textAlignment = NSTextAlignment.Center
        // re-adjust the frame size
        sentence.frame = CGRect(x:50, y:90, width:320, height:((senSize/32+1)*40))
        
        
        // initialize the user input textfield
        let userInput = UITextField(frame: CGRect(x:150, y:(180), width:50, height:40))
        userInput.text = "_____"
       
        
        
        // initialize timer
        
        timerText = UILabel(frame: CGRect(x:350, y:20, width:80, height:40))
        timerText.text = "\(counter)"
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("timerAction"), userInfo: nil, repeats: true)

        self.view.addSubview(sentence)
        self.view.addSubview(userInput)
        self.view.addSubview(timerText)
    }
    func timerAction() {
        if counter > 0 {
            counter -= 1
            timerText.text = "\(counter)"
        }
        else {
            performSegueWithIdentifier("last", sender: self)
            
//            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc: UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("TimeUp") as UIViewController
//            self.presentViewController(vc, animated: true, completion: nil)
            
        }
    }
//    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
//        let svc = segue.destinationViewController as! MakesModelViewController
//        svc.m = m
//        
//    }
}
