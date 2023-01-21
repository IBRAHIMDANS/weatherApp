//
//  CitiesCell.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 23/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit

class CitiesCell: UITableViewCell {


    @IBOutlet weak var city: UILabel!
    
    func configure(cityName: String) {
        self.city.text = cityName
    }
    
}
