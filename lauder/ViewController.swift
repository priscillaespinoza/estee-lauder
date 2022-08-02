//
//  ViewController.swift
//  lauder
//
//  Created by scholar on 7/29/22.
//


import AVKit
import AVFoundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "vllo", ofType: "mp4")!))
   
        let layer = AVPlayerLayer(player:player)
        layer.frame = view.bounds
        layer.videoGravity = .resizeAspectFill
    
        view.layer.addSublayer(layer)
        
        player.play()
        
    
    }
}

