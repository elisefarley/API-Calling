//
//  ViewController.swift
//  API Calling
//
//  Created by Elise Farley on 2/4/20.
//  Copyright © 2020 Elise Farley. All rights reserved.
//

import UIKit

class SourcesViewController: UITableViewController {
    
    var channels = [[String: String]]()
    let apiKey = "4TWNwDPsxsbfNtLrAJRV2Nzv6NOA2uE0Nho0cXGd"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Weather Channels"
        let query = "https://api.nasa.gov/planetary/apod?api_key=(apiKey)"
    }
}

