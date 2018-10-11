//
//  CreateAccountViewController.swift
//  tutorTracking
//
//  Created by Anthony Kapiti on 10/11/18.
//  Copyright © 2018 Brian Thomas O'Leary. All rights reserved.
//

import UIKit

class CreateAccount: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var coachButton: UIButton!
    
    @IBOutlet weak var orLabel: UILabel!
    
    @IBOutlet weak var athleteButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        imageView.addSubview(coachButton)
        imageView.addSubview(orLabel)
        imageView.addSubview(athleteButton)
        
        //configure buttons
        coachButton.layer.cornerRadius = 18
        coachButton.layer.borderWidth = 1.8
        coachButton.layer.borderColor = UIColor.white.cgColor
        
        athleteButton.layer.cornerRadius = 18
        athleteButton.layer.borderWidth = 1.8
        athleteButton.layer.borderColor = UIColor.white.cgColor
        
        setNeedsStatusBarAppearanceUpdate()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
