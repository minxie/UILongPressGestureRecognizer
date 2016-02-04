//
//  ViewController.swift
//  UILongPressRecognizer
//
//  Created by Randall Mardus on 2/4/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gesture: UILongPressGestureRecognizer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gesture.minimumPressDuration = 2.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func longPressGesture(sender: UILongPressGestureRecognizer) {
        
        if sender.state == UIGestureRecognizerState.Ended {
            print("UILongPressGestureRecognizer ended!")
        }
        else if sender.state == UIGestureRecognizerState.Began {
            print("UILongPressGestureRecognizer began!")
        }
        else {
            print("Gesture Recognizer is in another state")
        }
        
    }

}