//
//	Response.swift
//
//	Create by Tarannum Kadri on 14/7/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Response : NSObject, NSCoding, Mappable{

	var copyright : String?
	var numResults : Int?
	var results : [Result]?
	var status : String?


	class func newInstance(map: Map) -> Mappable?{
		return Response()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		copyright <- map["copyright"]
		numResults <- map["num_results"]
		results <- map["results"]
		status <- map["status"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         copyright = aDecoder.decodeObject(forKey: "copyright") as? String
         numResults = aDecoder.decodeObject(forKey: "num_results") as? Int
         results = aDecoder.decodeObject(forKey: "results") as? [Result]
         status = aDecoder.decodeObject(forKey: "status") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if copyright != nil{
			aCoder.encode(copyright, forKey: "copyright")
		}
		if numResults != nil{
			aCoder.encode(numResults, forKey: "num_results")
		}
		if results != nil{
			aCoder.encode(results, forKey: "results")
		}
		if status != nil{
			aCoder.encode(status, forKey: "status")
		}

	}

}
