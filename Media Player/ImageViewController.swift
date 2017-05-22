//
//  ImageViewController.swift
//  Media Player
//
//  Created by Levchuk Misha on 24.04.17.
//  Copyright © 2017 Levchuk Misha. All rights reserved.
//

import UIKit
import AVFoundation

class ImageViewController: UIViewController {

    
    var selectedImage: String!
    var audioPlayer:AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var myImageView: UIImageView!

    @IBAction func nextButton(_ sender: AnyObject) {
        
    }
    @IBAction func prevButton(_ sender: AnyObject) {
        
    }
    
    @IBAction func stopButton(_ sender: AnyObject) {
        audioPlayer.stop()
    }
    @IBAction func playButton(_ sender: AnyObject) {
        audioPlayer.play()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selectedImage == "acdc1" {
            do {
                let audioPath = Bundle.main.path(forResource: "back-in-black", ofType: "mp3")
                try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            } catch {
                print("Error")
            }
        } else if selectedImage == "acdc2" {
            do {
                let audioPath = Bundle.main.path(forResource: "high-way", ofType: "mp3")
                try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            } catch {
                print("Error")
            }
        } else if selectedImage == "queen1" {
            do {
                let audioPath = Bundle.main.path(forResource: "10-its_late", ofType: "mp3")
                try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            } catch {
                print("Error")
            }
        } else if selectedImage == "queen2" {
            do {
                let audioPath = Bundle.main.path(forResource: "queen-iw", ofType: "mp3")
                try audioPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            } catch {
                print("Error")
            }
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(true)
        self.myImageView.image = UIImage(named: selectedImage)
        
    }

    
}
