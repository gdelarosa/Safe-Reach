//
//  ViewController.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 9/6/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit
import MapKit


protocol HandleMapSearch: class {
    func dropPinZoomIn(_ placemark:MKPlacemark)
}

class MapViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var mapView: MKMapView!

    var locations = [Locations]()
    var locationManager = CLLocationManager()
    // Testing
    var selectedPin: MKPlacemark?
    var resultSearchController: UISearchController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        mapView.delegate = self
        loadInitialData()
        mapView.addAnnotations(locations)
        
        // Navigation Controller UI
        let imageView = UIImageView(image: UIImage(named: "Triangle"))
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 30))
        imageView.frame = titleView.bounds
        titleView.addSubview(imageView)
        self.navigationItem.titleView = titleView

    }
        
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        //checkLocationAuthorizationStatus()
//    }
    
//    let regionRadius: CLLocationDistance = 10000
//    
//    func centerMapOnLocation(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let location = locations.first {
//            let span = MKCoordinateSpanMake(0.05, 0.05)
//            let region = MKCoordinateRegion(center: location.coordinate, span: span)
//            mapView.setRegion(region, animated: true)
//        }
////        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
////        mapView.setRegion(coordinateRegion, animated: true)
//    }
    
    func loadInitialData(){
        let filename = Bundle.main.path(forResource: "Location", ofType: "json")
        
        var data: Data?
        do{
            data = try Data(contentsOf: URL(fileURLWithPath: filename!), options: Data.ReadingOptions(rawValue: 0))
        }catch _ {
            data = nil
        }
        
        var jsonObject: AnyObject?
        
        if let data = data {
            do {
                jsonObject = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions(rawValue: 0)) as AnyObject 
            }catch _ {
                jsonObject = nil
            }
        }
        
        if let jsonObject = jsonObject as? [String: AnyObject], let jsonData = JSONValue.fromObject(jsonObject as AnyObject)?["data"]?.array{
            for locationJSON in jsonData {
                if let locationJSON = locationJSON.array, let location = Locations.fromJSON(locationJSON){
                    locations.append(location)
                }
            }
        }
        
    }
    
//    func checkLocationAuthorizationStatus(){
//        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
//            mapView.showsUserLocation = true
//        }else {
//            locationManager.requestWhenInUseAuthorization()
//        }
//    }
    // TESTING, zooms to users location.
//    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let location = locations.first {
//            let span = MKCoordinateSpanMake(0.05, 0.05)
//            let region = MKCoordinateRegion(center: location.coordinate, span: span)
//            mapView.setRegion(region, animated: true)
//        }
//    }
    
}

extension MapViewController : CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error:: \(error.localizedDescription)")
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            locationManager.requestLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if locations.first != nil {
            print("location:: (location)")
        }
        if let location = locations.first {
            let span = MKCoordinateSpanMake(0.10, 0.10)
            let region = MKCoordinateRegion(center: location.coordinate, span: span)
            mapView.setRegion(region, animated: true)
        }
        
    }
    
}

