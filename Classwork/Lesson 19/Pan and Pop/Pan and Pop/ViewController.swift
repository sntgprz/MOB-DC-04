//
//  ViewController.swift
//  Pan and Pop
//
//  Created by Santiago Perez on 12/2/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit
import pop

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ball: UIImageView!
    
    
    
    var ballAnimation: POPBasicAnimation?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ball.userInteractionEnabled = true
        
        ball.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: "ballPanned:"))
        
        //When we do a function selector, we always add a colon on the end. ballPanned is a function selector.
        
        
        animateBall()
    }
    
    func ballPanned(pan: UIPanGestureRecognizer) {
        // print("panning")
        
        switch pan.state {
        case .Began:
            print("began panning")
            
            //We want to remove all existing animations
            ball.pop_removeAllAnimations()
            
            
            
        case .Changed:
            
            //This is where we would change the view's location
            
            ball.center = pan.locationInView(self.view) //the parent view
            
            print(ball.center)
            
            
        case .Ended:
            print("Finished panning")
            animateBallWithSpring()
            
        default: break
        
        }
        
    }
    
    //Basic Animation
    func animateBall() {
        
        let ballAnimation = POPBasicAnimation(propertyNamed: kPOPViewCenter) //propertyNamed is the property we are changing
        
        ballAnimation.toValue = NSValue(CGPoint: CGPoint(x: 86.5, y: 532.5))
        ballAnimation.duration = 3
        
        ballAnimation.delegate = self
        
        // ballAnimation.velocity = NSValue(500)
        
        ball.pop_addAnimation(ballAnimation, forKey: nil)
        
    }
    
    func pop_animationDidStop(anim: POPAnimation!, finished: Bool) {
        print("animation stopped!")
    }
    
    func pop_animationDidStart(anim: POPAnimation!) {
        print("Animation started")
    }
    
    func pop_animationDidApply(anim: POPAnimation!) {
        
    }
    
    
    //Animation with a Bounce
    func animateBallWithSpring() {
        
        //Constructing an animation object
        
        let ballAnimation = POPSpringAnimation(propertyNamed: kPOPViewCenter) //propertyNamed is the property we are changing
        
        ballAnimation.springSpeed = 2
        ballAnimation.springBounciness = 5

        ballAnimation.toValue = NSValue(CGPoint: CGPoint(x: 86.5, y: 532.5))
        ballAnimation.delegate = self
        
        
        ball.pop_addAnimation(ballAnimation, forKey: nil)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

