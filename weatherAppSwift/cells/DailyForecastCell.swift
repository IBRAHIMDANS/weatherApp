//
//  DailyForecastCell.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit

class DailyForecastCell: UITableViewCell {
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var minTemperature: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var maxTemperature: UILabel!
    
    func configure(withWeather weatherIcon: String, minTemperature: Double, time: Int, maxTemperature: Double ) {
        let date = NSDate(timeIntervalSince1970: TimeInterval(time))
        let formatter = DateFormatter()
        formatter.setLocalizedDateFormatFromTemplate("EEEE")
        self.weatherIcon.image = UIImage(named: weatherIcon)
        self.minTemperature.text = "\(Int(minTemperature))°C"
        self.time.text =  "\(formatter.string(from: date as Date))"
        self.maxTemperature.text = "\(Int(maxTemperature))°C"
    }
    
}
