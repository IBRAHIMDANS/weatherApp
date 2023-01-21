//
//  ExtraInfosCell.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import UIKit

class ExtraInfosCell: UITableViewCell {


    @IBOutlet weak var leftTitle: UILabel!
    @IBOutlet weak var leftValue: UILabel!
    @IBOutlet weak var rightTitle: UILabel!
    @IBOutlet weak var rightValue: UILabel!
    
    func configure(leftTitle: String, leftValue: String, rightTitle: String, rightValue: String) {
        self.leftTitle.text = leftTitle
        self.leftValue.text = leftValue
        self.rightTitle.text = rightTitle
        self.rightValue.text = rightValue
    }
    
}
