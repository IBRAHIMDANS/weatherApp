//
//  WeatherViewController.swift
//  weatherAppSwift
//
//  Created by Benjamin BENOIT on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import Alamofire

class WeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var location: CLLocationCoordinate2D?
    var weather: Weather?
    var cities: String = ""
    var Spinner : UIView?

    @IBOutlet weak var loadingView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor.clear
        requestWeather()
        self.title = cities
    }
    override func viewWillAppear(_ animated: Bool) {

    }
    func requestWeather() {
        RequestManager.getMeteo(latitude: "\(location?.latitude ?? 48.856613)", longitude: "\(location?.latitude ?? 2.352222 )", success: { (data) in
            let decoder = JSONDecoder()
            self.weather = (try? decoder.decode(Weather.self, from: data))
            self.tableView.reloadData()
            let backgroundImage = UIImage(named: "bg" + (self.weather?.currently.icon ?? ""))
            self.tableView.backgroundView = UIImageView(image: backgroundImage)
            self.tableView.contentMode = .scaleAspectFit
            self.loadingView.isHidden = true
        }) { (error) in
            print(error)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return  1
        case 2:
            return 24 
        case 3:
            return 1
        case 4:
            return weather?.daily.data.count ?? 1
        case 5:
            return 1
        case 6:
            return 1
        case 7:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section) {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell", for: indexPath) as? HeaderCell {
                cell.backgroundColor = UIColor.clear
                cell.configure(withWeather: weather?.currently.icon ?? "", temperature: weather?.currently.temperature ?? 0, summary: weather?.currently.summary ?? "")
                return cell
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "titleHourlyCell", for: indexPath) as? TitleCell {
                cell.backgroundColor = UIColor.clear
                cell.configure(withWeather: weather?.hourly.summary ?? "error")
                return cell
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "hourlyCell", for: indexPath) as? HourlyForecastCell {
                cell.backgroundColor = UIColor.clear
                cell.configure(withWeather: weather?.hourly.data[indexPath.row].icon ?? "", temperature: weather?.hourly.data[indexPath.row].temperature ?? 0, time: weather?.hourly.data[indexPath.row].time ?? 0, humidity: weather?.hourly.data[indexPath.row].humidity ?? 0, timezone: weather?.timezone ?? "Paris")
                return cell
            }
        case 3:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "titleDailyCell", for: indexPath) as? TitleCell {
                cell.backgroundColor = UIColor.clear
                cell.configure(withWeather: weather?.daily.summary ?? "error")
                return cell
            }
        case 4:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "dailyCell", for: indexPath) as? DailyForecastCell {
                cell.backgroundColor = UIColor.clear
                cell.configure(withWeather: weather?.daily.data[indexPath.row].icon ?? "null", minTemperature: weather?.daily.data[indexPath.row].temperatureMin ?? 0.0, time: weather?.daily.data[indexPath.row].time ?? 00, maxTemperature: weather?.daily.data[indexPath.row].temperatureMax ?? 0.0)
                return cell
            }
        case 5:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "titleExtraCell", for: indexPath) as? TitleCell {
                cell.backgroundColor = UIColor.clear
                cell.configure(withWeather: "Extra Informations")
                return cell
            }
        case 6:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "firstExtrasCell", for: indexPath) as? ExtraInfosCell {
                cell.backgroundColor = UIColor.clear
                cell.configure(leftTitle: "Humidity", leftValue: "\(Int((weather?.currently.humidity ?? 0)*100)) %", rightTitle: "WindSpeed", rightValue: "\(Int(weather?.currently.windSpeed ?? 0)) km/h")
                return cell
            }
        case 7:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "secondExtrasCell", for: indexPath) as? ExtraInfosCell {
                cell.backgroundColor = UIColor.clear
                cell.configure(leftTitle: "Pressure", leftValue: "\(Int(weather?.currently.pressure ?? 0)) hPa", rightTitle: "UV Index", rightValue: "\(weather?.currently.uvIndex ?? 0)")
                return cell
            }
        default:
            return UITableViewCell()
        }
        return UITableViewCell()
    }
}
