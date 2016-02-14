//
//  ViewController.swift
//  poemGame
//
//  Created by Xiao Tan on 2/13/16.
//  Copyright © 2016 HackBU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //var promptWords = [String]()
    //var poems = [[String]]()
    var playerSubmissions = [String]()
    var m = Modeltwo(names: ["hello"])
    
    @IBOutlet weak var playerNum: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let svc = segue.destinationViewController as! MakesModelViewController
            svc.m = m

    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "firstSeg" {
            if !(playerNum.text == "3" || playerNum.text == "4" || playerNum.text == "5" || playerNum.text == "6") {
                return false
            }
            var s = [String]()
            for _ in 0..<Int(playerNum.text!)! {
                s.append("empty")
            }
            m = Modeltwo(names: s)
            return true
        }
        return true
    }

    @IBAction func setupButtonControl(sender: UIButton) {

    }

}

