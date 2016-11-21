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
        //let initialLocation = CLLocation(latitude: 34.0522, longitude: -118.2437) // LA
        //centerMapOnLocation(initialLocation)
        loadInitialData()
        mapView.addAnnotations(locations)
        
        //Testing 
        let locationSearchTable = storyboard!.instantiateViewController(withIdentifier: "LocationSearchTable") as! LocationSearchTable
        resultSearchController = UISearchController(searchResultsController: locationSearchTable)
        //resultSearchController.searchResultsUpdater = locationSearchTable
        let searchBar = resultSearchController!.searchBar
        searchBar.sizeToFit()
        searchBar.placeholder = "Search for places"
        navigationItem.titleView = resultSearchController?.searchBar
        resultSearchController.hidesNavigationBarDuringPresentation = false
        resultSearchController.dimsBackgroundDuringPresentation = true
        definesPresentationContext = true
       // locationSearchTable.mapView = mapView
        //locationSearchTable.handleMapSearchDelegate = self
        
        

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
            let span = MKCoordinateSpanMake(0.05, 0.05)
            let region = MKCoordinateRegion(center: location.coordinate, span: span)
            mapView.setRegion(region, animated: true)
        }
        
    }
    
}

//extension MapViewController: HandleMapSearch {
//    
//    func dropPinZoomIn(_ placemark: MKPlacemark){
//        // cache the pin
//        selectedPin = placemark
//        // clear existing pins
//        mapView.removeAnnotations(mapView.annotations)
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = placemark.coordinate
//        annotation.title = placemark.name
//        
//        if let city = placemark.locality,
//            let state = placemark.administrativeArea {
//            annotation.subtitle = "\(city) \(state)"
//        }
//        
//        mapView.addAnnotation(annotation)
//        let span = MKCoordinateSpanMake(0.05, 0.05)
//        let region = MKCoordinateRegionMake(placemark.coordinate, span)
//        mapView.setRegion(region, animated: true)
//    }
//    
//}

//extension MapViewController : MKMapViewDelegate {
//    
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?{
//        
//        guard !(annotation is MKUserLocation) else { return nil }
//        
//        let reuseId = "pin"
//        guard let pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId) as? MKPinAnnotationView else { return nil }
//        
//        pinView.pinTintColor = UIColor.orange
//        pinView.canShowCallout = true
//        let smallSquare = CGSize(width: 30, height: 30)
//        let button = UIButton(frame: CGRect(origin: CGPoint.zero, size: smallSquare))
//        //button.setBackgroundImage(UIImage(named: "car"), for: UIControlState())
//        //button.addTarget(self, action: #selector(MapViewController.getDirections), for: .touchUpInside)
//        pinView.leftCalloutAccessoryView = button
//        
//        return pinView
//}
//}


