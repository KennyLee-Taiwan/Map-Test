//
//  ViewController.swift
//  mapTest
//
//  Created by Daphne Jiang on 9/16/16.
//  Copyright © 2016 Kenny Lee. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var myMap: MKMapView!

    var locationManager:CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateMap()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func generateMap() {
        
        //緯度
        let latitude:CLLocationDegrees = 48.858532
        
        //經度
        let longitude:CLLocationDegrees = 2.294481
        
        //從緯度與精度產生座標
        let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        //直向縮放
        let latDelta:CLLocationDegrees = 0.01
        
        //橫向縮放
        let lonDelta:CLLocationDegrees = 0.01
        
        //從直向縮放與橫向縮放產生縮放範圍
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        //從座標與縮放範圍產生顯示範圍
        let region:MKCoordinateRegion = MKCoordinateRegionMake(coordinate, span)
        
        //讓地圖秀出區域
        myMap.setRegion(region, animated: true)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

