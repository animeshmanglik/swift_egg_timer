//
//  ViewController.swift
//  Egg Timer
//
//  Created by Animesh Manglik on 12/9/16.
//  Copyright © 2016 Animesh Manglik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var time = 200
    
    @IBOutlet weak var timerValue: UILabel!
   
    func processTimer() {
        
        if (time > 0) {
            time -= 1
            timerValue.text = String(time)
        } else {
            timer.invalidate()
        }

    }

    @IBAction func timerPausePressed(_ sender: AnyObject) {
        timer.invalidate()
    }

    @IBAction func timerPlayPressed(_ sender: AnyObject) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }

    @IBAction func timerAddPressed(_ sender: AnyObject) {
        time += 10
        timerValue.text = String(time)
    }
    
    @IBAction func timerReducePressed(_ sender: AnyObject) {
        if (time > 10) {
            time -= 10
            timerValue.text = String(time)
        }

    }
    
    @IBAction func timerResetPressed(_ sender: AnyObject) {
        time = 200
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

