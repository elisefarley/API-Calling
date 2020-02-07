//
//  ViewController.swift
//  API Calling
//
//  Created by Elise Farley on 2/4/20.
//  Copyright © 2020 Elise Farley. All rights reserved.
//

import UIKit

class CitiesViewController: UITableViewController {
   
    //var city = ""
    let cities = ["Chicago,IL", "Denver,CO", "Nashville,TN", "Juneau,AK", "Sacramento,CA", "Atlanta,GA", "Indianapolis,IN", "Honolulu,HI"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cities"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        cell.textLabel!.text = cities[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! DetailsViewController
        let index = tableView.indexPathForSelectedRow?.row
        dvc.city = cities[index!]
    }
}

