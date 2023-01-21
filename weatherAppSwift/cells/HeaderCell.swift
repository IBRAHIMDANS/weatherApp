//
//  HeaderCell.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit
import SDWebImage

class HeaderCell: UITableViewCell {
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var summary: UILabel!
    
    func configure(withWeather weatherIcon: String, temperature: Double, summary: String) {
        self.weatherIcon.image = UIImage(named: weatherIcon)
        self.temperature.text = "\(Int(temperature))°C"
        self.summary.text = summary
    }
    
    
}
