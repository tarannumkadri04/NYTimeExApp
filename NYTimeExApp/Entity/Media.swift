//
//	Media.swift
//
//  Create by Tarannum Kadri on 14/7/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Media : NSObject, NSCoding, Mappable{

	var approvedForSyndication : Int?
	var caption : String?
	var copyright : String?
	var mediametadata : [Mediametadata]?
	var subtype : String?
	var type : String?


	class func newInstance(map: Map) -> Mappable?{
		return Media()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		approvedForSyndication <- map["approved_for_syndication"]
		caption <- map["caption"]
		copyright <- map["copyright"]
		mediametadata <- map["media-metadata"]
		subtype <- map["subtype"]
		type <- map["type"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         approvedForSyndication = aDecoder.decodeObject(forKey: "approved_for_syndication") as? Int
         caption = aDecoder.decodeObject(forKey: "caption") as? String
         copyright = aDecoder.decodeObject(forKey: "copyright") as? String
         mediametadata = aDecoder.decodeObject(forKey: "media-metadata") as? [Mediametadata]
         subtype = aDecoder.decodeObject(forKey: "subtype") as? String
         type = aDecoder.decodeObject(forKey: "type") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if approvedForSyndication != nil{
			aCoder.encode(approvedForSyndication, forKey: "approved_for_syndication")
		}
		if caption != nil{
			aCoder.encode(caption, forKey: "caption")
		}
		if copyright != nil{
			aCoder.encode(copyright, forKey: "copyright")
		}
		if mediametadata != nil{
			aCoder.encode(mediametadata, forKey: "media-metadata")
		}
		if subtype != nil{
			aCoder.encode(subtype, forKey: "subtype")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}

	}

}
