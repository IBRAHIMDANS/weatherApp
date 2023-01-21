//
//  RequestManager.swift
//  weatherAppSwift
//
//  Created by Ibrahima DANSOKO on 22/05/2019.
//  Copyright © 2019 Benjamin Ibrahima. All rights reserved.
//

import Foundation
import Alamofire

let token = "cb256f9f72ca9e3d9f06f68089452881"

struct RequestManager {

    static func getMeteo(latitude: String,longitude: String,success: @escaping (Data)->(), failure: @escaping (Error)->()) {
        Alamofire.request("https://api.darksky.net/forecast/\(token)/\(latitude),\(longitude)?units=si").responseData {
            (data) in
            switch data.result {
            case .success(let value):
                success(value)
                break
            case .failure(let error):
                failure(error)
                break
            }
        }
    }
}
