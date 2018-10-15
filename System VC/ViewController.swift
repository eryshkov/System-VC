//
//  ViewController.swift
//  System VC
//
//  Created by Evgeniy Ryshkov on 15/10/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: - IBActions
    
    @IBAction func shareButtonPressed(_ sender: UIButton) {
        guard let image = imageView.image else { return }
        
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        //for big screen sizes
        activityController.popoverPresentationController?.sourceView = sender
        
        present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func safariButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func cameraButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func emailButtonPressed(_ sender: UIButton) {
        
    }
}

