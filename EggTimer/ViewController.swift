//
//  ViewController.swift
//  EggTimer
//
//  Created by VEERASEKHAR ADDEPALLI on 26/12/16.
//  Copyright © 2016 VEERASEKHAR ADDEPALLI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210
    
    func decreaseTimer()
    {
        if time > 0{
        time -= 1
        
        timerLabel.text = String(time)
        }
        else
        {
            timer.invalidate()
        }
    }
    @IBOutlet var timerLabel: UILabel!
    @IBAction func pause(_ sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func play(_ sender: AnyObject) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
   
    @IBAction func minusTen(_ sender: AnyObject) {
        if time > 10{
        time -= 10
        timerLabel.text = String(time)
        }
    }
    @IBAction func plusTen(_ sender: AnyObject) {
        time += 10
        timerLabel.text = String(time)
    }
    @IBAction func reset(_ sender: Any) {
        time = 210
        timerLabel.text = String(time)
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

