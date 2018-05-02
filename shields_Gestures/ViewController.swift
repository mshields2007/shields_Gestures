//
//  ViewController.swift
//  shields_Gestures
//
//  Created by Matt Shields on 4/25/18.
//  Copyright © 2018 Matt Shields. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func pinchGesture(_ recognizer: UIPinchGestureRecognizer) {
        
        if let view = recognizer.view {
            view.transform = view.transform.scaledBy(x: recognizer.scale, y: recognizer.scale)
            recognizer.scale = 1
        }
        
    }
    
    
    
    @IBAction func rotateGesture(_ recognizer: UIRotationGestureRecognizer) {
        
        if let view = recognizer.view {
            view.transform = view.transform.rotated(by: recognizer.rotation)
            recognizer.rotation = 0
        }
    }
    
    @IBOutlet weak var pictureFrame: UIImageView!
    @IBAction func imagePanned(_ recognizer: UIPanGestureRecognizer) {
        
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
        
        
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
       if pictureFrame.image == #imageLiteral(resourceName: "happy")
       {
        pictureFrame.image = #imageLiteral(resourceName: "funny")
       }else{
        pictureFrame.image = #imageLiteral(resourceName: "happy")
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Loaded")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

