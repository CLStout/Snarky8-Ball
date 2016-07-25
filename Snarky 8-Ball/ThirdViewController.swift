//
//  ThirdViewController.swift
//  Snarky 8-Ball
//
//  Created by Stanley Stout on 7/22/16.
//  Copyright © 2016 Chris Stout. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var snarkyResponseLabel: UILabel!
    
    var snarkyResponse = ""
    var question = "You asked"
    let responseArray = ["Kid, does it look like i have time for this?", "Yes, but only because you'll leave faster if I give you what you want.", "I really don't care about any of this.", "There is absolutely no way that could work, you fool", "Your entire answer is determined by a random number generator and therefore meaningless.", "Look, buddy, I'm going to be straight with you. If you're resorting to asking a fake 8-ball then you don't want the truth.", "Of course not, use your brain every once in a while, ok?", "I'm going to say 'yes', because I wasn't paying attention.", "Don;'t know, don't care.", "Yeah, sure, whatever you say, kiddo", "That's the stupidest thing I've ever heard, no, no, a thousand times no."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "You asked: " + question
        let randomNumber = Int(arc4random_uniform(11))
        snarkyResponse = responseArray[randomNumber]
        snarkyResponseLabel.text = snarkyResponse
    }
    
}
