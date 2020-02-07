//
//  DetailsViewController.swift
//  API Calling
//
//  Created by Elise Farley on 2/7/20.
//  Copyright © 2020 Elise Farley. All rights reserved.
//

import UIKit

class DetailsViewController: UITableViewController {
    
    var city = ""
    let apiKey = "2f5ea686abbd45f7b659774d308be05c"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let query = "http://api.weatherbit.io/v2.0/current?city=\(city)&key=\(apiKey)"
    }
}
