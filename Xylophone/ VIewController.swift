//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?

class ViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        playSound(tag: sender.tag);
        
    }
    func playSound(tag:Int)  {
        let path = Bundle.main.path(forResource:"note"+"\(tag)" , ofType: "wav")
        if path != nil {
            
            let url = URL(fileURLWithPath: path!)
            
            let player = AVPlayer(url: url)
           
            let playerLayer = AVPlayerLayer(player: player)
            
            playerLayer.frame = self.view.bounds
            
            self.view.layer.addSublayer(playerLayer)
            
            player.play();
        } else {
            print("File Not exist")
        }
    }
    
}

