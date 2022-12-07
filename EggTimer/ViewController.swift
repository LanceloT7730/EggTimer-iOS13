//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 1, "Medium": 2, "Hard": 3]
    var counter:Int = 60
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        counter = eggTimes[sender.currentTitle!]! * 60
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateCounter() {
        if counter > 0 {
            print("\(counter) seconds.")
            counter -= 1
        }
    }
}
