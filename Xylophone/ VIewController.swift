//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var sound : AVAudioPlayer!
    
    var soundsList = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        if let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav"){
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            AudioServicesPlaySystemSound(mySound)
        }
        
    }

}

