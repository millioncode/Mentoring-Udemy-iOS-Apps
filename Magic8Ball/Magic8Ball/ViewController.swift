//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Aaron Cleveland on 12/27/18.
//  Copyright © 2018 Aaron Cleveland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallView: Int = 0

    @IBOutlet weak var magicView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomMagic()
    }
    
    @IBAction func shakeButton(_ sender: UIButton) {
        
        randomMagic()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        randomMagic()
        
    }
    
    func randomMagic() {
        
        randomBallView = Int.random(in: 0...5)
        
        magicView.image = UIImage(named: ballArray[randomBallView])
        
    }

}

