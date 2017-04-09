//
//  DisplayContentController.swift
//  Off the Wall Arapaho
//
//  Created by Yadira Valadez on 4/8/17.
//  Copyright © 2017 Yadira Valadez. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class DisplayContentController: UIViewController,AVAudioPlayerDelegate {

    var audioPlayer: AVAudioPlayer?
    var data : String = ""

@IBAction func playAudio(_ sender: AnyObject) {
    if let player = audioPlayer {
        player.play()
    }
}

override func viewDidLoad() {
    super.viewDidLoad()
    
    let url = URL.init(fileURLWithPath: Bundle.main.path(
        forResource: "1 What do you want to eat",
        ofType: "mp3")!)
    
    do {
        try audioPlayer = AVAudioPlayer(contentsOf: url)
        audioPlayer?.delegate = self
        audioPlayer?.prepareToPlay()
    } catch let error as NSError {
        print("audioPlayer error \(error.localizedDescription)")
    }
}
}
