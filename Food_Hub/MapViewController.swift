//
//  MapViewController.swift
//  Food_Hub
//
//  Created by Rohit on 12/2/17.
//  Copyright © 2017 Rohit. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var restaurant: Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()
         mapView.delegate = self
       // convert address to coordinate and convert it into map
        
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(restaurant.location,	completionHandler:	{
            placemarks,	error	in
            if	error != nil	{
                print(error)
                return
            }
            if let placemarks = placemarks {
                // get the first placemark
               let placemark = placemarks[0]
                // Add annotations
               let annotation = MKPointAnnotation()
                annotation.title = self.restaurant.name
                annotation.subtitle = self.restaurant.phone
                
                if let location = placemark.location {
                annotation.coordinate = location.coordinate
                self.mapView.showAnnotations([annotation], animated: true)
                self.mapView.selectAnnotation(annotation, animated: true)
                    
                }
                
                
            }
        })
        
        

   
    
}

//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        
//        
//    }
//    
    
    
    
    
    
    
    
    

} // main class parenthesis ends
