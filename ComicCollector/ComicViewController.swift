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
    
    //Firs
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    @IBAction func photosTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func cameraTapped(_ sender: Any) {
    }
    @IBAction func addTapped(_ sender: Any) {
    }
}
