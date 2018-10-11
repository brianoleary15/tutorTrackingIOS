//
//  ViewController.swift
//  tutorTracking
//
//  Created by Brian Thomas O'Leary on 9/18/18.
//  Copyright © 2018 Brian Thomas O'Leary. All rights reserved.
//

import UIKit
import CoreLocation
import QuartzCore

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var longitude: UILabel!
    @IBOutlet weak var latitude: UILabel!
    @IBOutlet weak var tutoringCenterStatus: UILabel!
    
    @IBOutlet weak var notifyLabel: UILabel!
    
    
    @IBOutlet weak var notifyButton: UIButton!
    
    
    
    var locationManager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        determineMyCurrentLocation()
        setNeedsStatusBarAppearanceUpdate()
        
        tutoringCenterStatus.layer.masksToBounds = true
        tutoringCenterStatus.layer.cornerRadius=6
        
        notifyButton.alpha = 0.5
        //notifyButton.setTitleColor(UIColor.gray, for: .disabled)
        notifyLabel.layer.masksToBounds = true
        notifyLabel.layer.cornerRadius=6
        notifyLabel.backgroundColor = UIColor.black.withAlphaComponent(0.4)
       
    }
    
    func determineMyCurrentLocation() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
            //locationManager.startUpdatingHeading()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation:CLLocation = locations[0] as CLLocation
        
        print("user latitude = \(userLocation.coordinate.latitude)")
        latitude.text = "\(userLocation.coordinate.latitude)"
        print("user longitude = \(userLocation.coordinate.longitude)")
        longitude.text = "\(userLocation.coordinate.longitude)"
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error)
    {
        print("Error \(error)")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
   
    @IBAction func notifyButtonPressed(_ sender: UIButton) {
        print("Button clicked")
    }
    
}

