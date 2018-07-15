//
//  AppConstants.swift
//  NYTimeExApp
//
//  Created by admin on 7/14/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit


struct kWebservice {
    static let baseURL = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/30.json?api-key="
    static let apiKey = "eb11634427f64d059c0e8b48e31f9c1b"
    static let section = ""
    static let serviceType = "GET"
    
}

enum kPeriods : String {
    case one = "1"
    case seven = "7"
    case thirty = "30"
}
