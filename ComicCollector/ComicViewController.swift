//
//  ComicViewController.swift
//  ComicCollector
//
//  Created by Michael Teti on 7/6/17.
//  Copyright © 2017 Michael Teti. All rights reserved.
//

import UIKit

class ComicViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    //Outlets
    @IBOutlet weak var comicImageView: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    
    //Global Variables
    var imagePicker = UIImagePickerController()
    
    //Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        //Define image from ImagePickerController
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        //Assign the selected image from the UIImagePickerController to the ImageView's image property
        comicImageView.image = image
        //Hide the UIImagePickerController
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func photosTapped(_ sender: Any) {
        //Assign the UIImagePickerController to the iOS Photo Library
        imagePicker.sourceType = .photoLibrary
        //Show the UIImagePickerController
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func cameraTapped(_ sender: Any) {
    }
    @IBAction func addTapped(_ sender: Any) {
    }
}
