//
//  ImagesViewController.swift
//  Media Examples
//
//  Created by Santiago Perez on 12/14/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit
import MobileCoreServices

class ImagesViewController: UIViewController, UINavigationControllerDelegate {

    
    var imageToSave: UIImage?
    
    
    
    
    //#SP The UIImagePickerControllerDelegate allows us to access the UIImagePickerController and to pass information from it to this ImagesViewController
    
    
    @IBOutlet weak var imageContainer: UIView!
    
    @IBOutlet weak var savePictureOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.savePictureOutlet.alpha = 0
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func takePictureButton(sender: AnyObject) {
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            print("Loaded camera.")
            
            let imageController = UIImagePickerController()
            
            //#SP Implement a delegation pattern
            imageController.delegate = self
            imageController.sourceType = .Camera
            
            imageController.mediaTypes = [kUTTypeImage as String]
            
            self.presentViewController(imageController, animated: true, completion: nil)
        }
        
    }

    @IBAction func loadPictureButton(sender: AnyObject) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .PhotoLibrary
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func savePictureButton(sender: AnyObject) {
        
        UIImageWriteToSavedPhotosAlbum(self.imageToSave!, self, nil, nil)
        UIView.animateWithDuration(1) { () -> Void in
            self.savePictureOutlet.alpha = 0
        }
        
    }
    
    //#SP Method from an outside view controller - Delegation
    

    
    func updateDisplayImage(image: UIImage) {
        
        //#SP Array of subviews
        self.imageContainer.subviews.forEach({ $0.removeFromSuperview() })
        
        let imageView = UIImageView()
        
        imageView.frame = CGRectMake(0, 0, self.imageContainer.bounds.size.width, self.imageContainer.bounds.size.height)
        
        imageView.clipsToBounds = true
        
        imageView.contentMode = .ScaleAspectFill
        
        imageView.image = image
        
        
        //#SP Pass in the imageView into the imageContainer
        self.imageContainer.addSubview(imageView)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ImagesViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        print("Camera picture delegation is running")
        if let checkedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            let newImage = CIImage(image: checkedImage)
            let filter = CIFilter(name: "CISepiaTone")
            
            filter?.setValue(newImage, forKey: kCIInputImageKey)
            
            filter?.setValue(0.9, forKey: kCIInputIntensityKey)
            
            let filteredImage = UIImage(CIImage: (filter!.outputImage!))
            self.imageToSave = filteredImage
            
            UIView.animateWithDuration(1, animations: {<#T##() -> Void#> in
            
                self.savePictureOutlet.alpha = 1
            })
            
            updateDisplayImage(filteredImage)
            
        }
        
        //#SP We have to dismiss the controller, regardless of whether the image is available or not
        self.dismissViewControllerAnimated(false, completion: nil)
    }
}
