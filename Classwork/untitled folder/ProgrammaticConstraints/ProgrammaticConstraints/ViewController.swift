//
//  ViewController.swift
//  ProgrammaticConstraints
//
//  Created by Santiago Perez on 11/2/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var head: UIView!
    
    //Creating our views and making them easily accessible
    
    var body = UIView()
    var leftArm = UIView()
    var rightArm = UIView()
    var leftLeg = UIView()
    var rightLeg = UIView()
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        drawBody()
        //drawLeftArm()
        //drawRightArm()
        drawLeftLeg()
        drawRightLeg()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //Functions that draw parts on the body
    
    
    // MARK: Create Body
    func drawBody() {
        
        self.body.backgroundColor = UIColor.blueColor()
        
        //First Step: Add our main object to the subview
        self.view.addSubview(self.body)
        
        
        //Tell the program that we are are switching to programmatic constraints from CGRect
        
        self.body.translatesAutoresizingMaskIntoConstraints = false
        
        //We can start adding constraints
        
        let bodyWidth = NSLayoutConstraint(item: self.body,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.5,
            constant: 0)
        
        let bodyTopPos = NSLayoutConstraint(item: self.body,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let bodyBottomPos = NSLayoutConstraint(item: self.body,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
     
        let bodyHorizontalPos = NSLayoutConstraint(item: self.body,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: self.head.frame.width*(0.25))
        
        self.view.addConstraints([bodyWidth, bodyTopPos, bodyBottomPos, bodyHorizontalPos])
        
    }
    
    // MARK: Create Left Arm
    func drawLeftArm() {
        
        self.leftArm.backgroundColor = UIColor.brownColor()
        
        //First Step: Add our main object to the subview
        self.view.addSubview(self.leftArm)
        
        
        //Tell the program that we are are switching to programmatic constraints from CGRect
        
        self.leftArm.translatesAutoresizingMaskIntoConstraints = false
        
        //We can start adding constraints
        
        let leftArmLeading = NSLayoutConstraint(item: self.leftArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 20)
        
        let leftArmTrailing = NSLayoutConstraint(item: self.leftArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 0)
        
        let leftArmTopPos = NSLayoutConstraint(item: self.leftArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
    
        let leftArmHeight = NSLayoutConstraint(item: self.leftArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 30)
        
        self.view.addConstraints([leftArmLeading, leftArmTrailing, leftArmTopPos, leftArmHeight])
        
    }
    
    // MARK: Create Right Arm
    func drawRightArm() {
        
        self.rightArm.backgroundColor = UIColor.brownColor()
        
        //First Step: Add our main object to the subview
        self.view.addSubview(self.rightArm)
        
        
        //Tell the program that we are are switching to programmatic constraints from CGRect
        
        self.rightArm.translatesAutoresizingMaskIntoConstraints = false
        
        //We can start adding constraints
        
        let rightArmLeading = NSLayoutConstraint(item: self.rightArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 0)
        
        let rightArmTrailing = NSLayoutConstraint(item: self.rightArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: -20)
        
        let rightArmTopPos = NSLayoutConstraint(item: self.rightArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let rightArmHeight = NSLayoutConstraint(item: self.rightArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 30)
    
        self.view.addConstraints([rightArmTopPos, rightArmLeading, rightArmTrailing, rightArmHeight])
        
        
    }
    
    
    // MARK: Create RIght
    func drawLeftLeg() {
        
        self.leftLeg.backgroundColor = UIColor.brownColor()
        
        self.view.addSubview(self.leftLeg)
        
        self.leftLeg.translatesAutoresizingMaskIntoConstraints = false
        
        let leftLegBottomPos = NSLayoutConstraint(item: self.leftLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let leftLegWidth = NSLayoutConstraint(item: self.leftLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)
        
        let leftLegTrailing = NSLayoutConstraint(item: self.leftLeg,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 0)
        
        let leftLegHeight = NSLayoutConstraint(item: self.leftLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Height,
            multiplier: 0.2,
            constant: 0)
        
        self.view.addConstraints([leftLegBottomPos, leftLegWidth, leftLegTrailing, leftLegHeight])
        
    }
    
    // MARK: Draw Right Leg
    func drawRightLeg() {
        
        self.rightLeg.backgroundColor = UIColor.brownColor()
        
        self.view.addSubview(self.rightLeg)
        
        self.rightLeg.translatesAutoresizingMaskIntoConstraints = false
        
        let rightLegBottomPos = NSLayoutConstraint(item: self.rightLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let rightLegWidth = NSLayoutConstraint(item: self.rightLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.leftLeg,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)
        
        let rightLegLeading = NSLayoutConstraint(item: self.rightLeg,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.body,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 0)
        
        let rightLegHeight = NSLayoutConstraint(item: self.rightLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Height,
            multiplier: 0.2,
            constant: 0)
        
        
        
        self.view.addConstraints([rightLegBottomPos, rightLegWidth, rightLegLeading, rightLegHeight])
        
        updateBodyOnLeg()
        
    }
    
    
    // MARK: Update Body On Leg
    func updateBodyOnLeg() {
        
        let bodyBottomPos = NSLayoutConstraint(item: self.body,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.rightLeg,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 0)
        
        
        self.view.addConstraints([bodyBottomPos])
    }
    

    
}

