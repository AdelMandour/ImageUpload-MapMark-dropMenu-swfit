//
//  mapViewController.swift
//  task
//
//  Created by mino on 5/9/18.
//  Copyright © 2018 marwa. All rights reserved.
//

import UIKit
import MapKit




class mapViewController: UIViewController {
 
    @IBOutlet weak var mapVie: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        let regionRadius: CLLocationDistance = 1000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                      regionRadius, regionRadius)
            mapVie.setRegion(coordinateRegion, animated: true)
            centerMapOnLocation(location: initialLocation)
            let artwork = Art (title: "King David Kalakaua",
                               locationName: "Waikiki Gateway Park",
                               discipline: "Sculpture",
                               coordinate: CLLocationCoordinate2D(latitude: 21.283921, longitude: -157.831661))
            mapVie.addAnnotation(artwork)
        }*/
        let gestureRecognizer = UITapGestureRecognizer(target: self,action:"handleTap")
        gestureRecognizer.delegate = self
        mapVie.addGestureRecognizer(gestureRecognizer)
        
        
        
        // Do any additional setup after loading the view.
    }
    func handleTap(_ gestureReconizer: UILongPressGestureRecognizer) {
        
        let location = gestureReconizer.location(in: mapVie)
        let coordinate = mapVie.convert(location,toCoordinateFrom: mapVie)
        
        
        // Add annotation:
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        mapVie.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
