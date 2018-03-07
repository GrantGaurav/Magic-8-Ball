//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Grant Gaurav on 2/21/18.
//  Copyright © 2018 Grant Gaurav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    let imageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ballImageChanged()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        ballImageChanged()
    }
    
    // This function change the image of imageView
    func ballImageChanged() {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: imageArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        ballImageChanged()
    }
    
}

