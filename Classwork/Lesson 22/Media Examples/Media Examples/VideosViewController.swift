//
//  VideosViewController.swift
//  Media Examples
//
//  Created by Santiago Perez on 12/14/15.
//  Copyright © 2015 Santiago Perez. All rights reserved.
//

import UIKit
import MediaPlayer
import MobileCoreServices

class VideosViewController: UIViewController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadVideoButton(sender: AnyObject) { //(And Play)
        
        if UIImagePickerController.isSourceTypeAvailable(.SavedPhotosAlbum) == false {
            print("Can't access media library")
        }
        
        let vidController = UIImagePickerController()
        vidController.sourceType = .SavedPhotosAlbum
        vidController.mediaTypes = [kUTTypeMovie as String]
        vidController.allowsEditing = true
        
        vidController.delegate = self
        
        presentViewController(vidController, animated: true, completion: nil)
        
        
        
    }

    @IBAction func recordAndSaveVideoButton(sender: AnyObject) {
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

extension VideosViewController: UIImagePickerControllerDelegate {
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        dismissViewControllerAnimated(true) { () -> Void in
            let videoPlayer = MPMoviePlayerViewController(contentURL: info[UIImagePickerControllerMediaURL] as! NSURL)
            self.presentMoviePlayerViewControllerAnimated(videoPlayer)
        }
    }
}