//
//  DashboardManager.swift
//  NYTimeExApp
//
//  Create by Tarannum Kadri on 14/7/2018
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DashboardManager: NSObject {

    static let singleton = DashboardManager()

    /*
     // Get all list of articles from server
     */
    func getAllArticles(success: @escaping ([Result]?) -> Void, fail: @escaping (_ error:NSError) -> Void) {
        
        let url = kWebservice.baseURL + kWebservice.apiKey
        
        NetworkManager.singleton.get(type: Response.self, url: url, success: { response in
            success(response.results)
        }) { error in
            debugPrint(error.localizedDescription)
            fail(error)
        }
    }
}
