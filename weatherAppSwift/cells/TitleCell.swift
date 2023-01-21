//
//  TitleCell.swift
//  weatherAppSwift
//
//  Created by Benjamin BENOIT on 23/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit

class TitleCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    func configure(withWeather title: String) {
        self.title.text = title
    }

}
