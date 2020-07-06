//
//  WeatherCell.swift
//  GeekWeather
//
//  Created by Mad Brains on 02.07.2020.
//  Copyright © 2020 GeekTest. All rights reserved.
//

import UIKit
import Kingfisher
class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var maxTemp: UILabel!
    @IBOutlet weak var condition: UILabel!

    func configure(with forecast: ForecastViewModel, day: String) {
        weatherImageView.image = nil//UIImage(named: forecast.weatherType)
        //dayLabel.text = (forecast.weekday ?? "")
        dayLabel.text = day
        maxTemp.text = forecast.temperature
        condition.text = forecast.weatherCondition
        
        guard let urlString = forecast.iconUrl, let url = URL(string: urlString) else {
            return
        }
        
        weatherImageView.kf.setImage(with: url)
    }
    
}
