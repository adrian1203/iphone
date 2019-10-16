//
//  weatherGet.swift
//  weather
//
//  Created by Guest User on 16.10.2019.
//  Copyright © 2019 Guest User. All rights reserved.
//

import Foundation

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

let url = URL(string: "https://www.metaweather.com/api/location/44418/2013/4/27")!


