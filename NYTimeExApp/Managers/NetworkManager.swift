//
//  RequestManager.swift
//  NYTimeExApp
//
//  Create by Tarannum Kadri on 14/7/2018
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

class NetworkManager : NSObject {

    static let singleton = NetworkManager()
    
    /*
     // Request to server using GET
     */
    func get <T:Mappable> (type:T.Type, url: String, success: @escaping (T) -> Void, fail:@escaping (_ error:NSError) -> Void) -> Void {
        Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseObject { (response: DataResponse<T>) in
            switch response.result {
            case .success(let item): do {
                success(item)
                }
            case .failure(let error): do {
                fail(error as NSError)
                }
            }
        }
    }
}

