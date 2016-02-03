//
//  ViewController.swift
//  tapper
//
//  Created by Ryan Bernstein on 2/2/16.
//  Copyright © 2016 Ryan Bernstein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numTaps = 0
    var currentTaps = 0
    
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var tapBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playBtnPressed(sender: UIButton!) {
        numTaps = Int(arc4random_uniform(50))
        //print(numTaps)
        playBtn.hidden = true
        tapBtn.hidden = false
        currentTaps = 0
    }
    @IBAction func coinTapped(sender: AnyObject) {
        currentTaps++
        if currentTaps >= numTaps {
            numTaps = 0
            tapBtn.hidden = true
            playBtn.hidden = false
        }
    }
}