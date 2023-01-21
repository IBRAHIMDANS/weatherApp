//
//  ViewController.swift
//  weatherAppSwift
//
//  Created by Benjamin BENOIT on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var listView: UIView!
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func segmentList(_ sender: Any) {
        if listView.isHidden == true {
            listView.isHidden = false
        }else{
            listView.isHidden = true
        }
    }
    var selectedCoordinate: CLLocationCoordinate2D?
    var cityTitle: String?
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.mapView.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        for cities in CitiesData.list {
            let pin = MKPointAnnotation()
            pin.coordinate = cities.coordinates
            pin.title = cities.name
            mapView.addAnnotation(pin)
        }
    }
    
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if let viewController = view.annotation as? MKPointAnnotation {
            self.selectedCoordinate = view.annotation?.coordinate
            cityTitle = view.annotation?.title ?? "empty"
            performSegue(withIdentifier: "annotation_ID", sender: viewController)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CitiesData.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CitiesCell", for: indexPath) as? CitiesCell {
            cell.configure(cityName: CitiesData.list[indexPath.row].name)
             return cell
        }
        return  UITableViewCell()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "annotation_ID" {
            if let weatherViewController = segue.destination as? WeatherViewController {
                weatherViewController.location = selectedCoordinate ?? CLLocationCoordinate2D()
                weatherViewController.cities = cityTitle ?? "empty"
            }
        } else if segue.identifier == "listView_ID" {
            if let weatherViewController = segue.destination as? WeatherViewController , let indexPathSelected = tableView.indexPathForSelectedRow {
                weatherViewController.location = CitiesData.list[indexPathSelected.row].coordinates
                weatherViewController.cities = CitiesData.list[indexPathSelected.row].name 
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
