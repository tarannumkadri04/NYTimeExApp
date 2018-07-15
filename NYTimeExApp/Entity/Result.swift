//
//	Result.swift
//
//  Create by Tarannum Kadri on 14/7/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class Result : NSObject, NSCoding, Mappable{

	var abstractField : String?
	var adxKeywords : String?
	var assetId : Int?
	var byline : String?
	var column : AnyObject?
	var desFacet : [String]?
	var geoFacet : [String]?
	var id : Int?
	var media : [Media]?
	var orgFacet : [String]?
	var perFacet : String?
	var publishedDate : String?
	var section : String?
	var source : String?
	var title : String?
	var type : String?
	var url : String?
	var views : Int?


	class func newInstance(map: Map) -> Mappable?{
		return Result()
	}
	required init?(map: Map){}
	private override init(){}

	func mapping(map: Map)
	{
		abstractField <- map["abstract"]
		adxKeywords <- map["adx_keywords"]
		assetId <- map["asset_id"]
		byline <- map["byline"]
		column <- map["column"]
		desFacet <- map["des_facet"]
		geoFacet <- map["geo_facet"]
		id <- map["id"]
		media <- map["media"]
		orgFacet <- map["org_facet"]
		perFacet <- map["per_facet"]
		publishedDate <- map["published_date"]
		section <- map["section"]
		source <- map["source"]
		title <- map["title"]
		type <- map["type"]
		url <- map["url"]
		views <- map["views"]
		
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         abstractField = aDecoder.decodeObject(forKey: "abstract") as? String
         adxKeywords = aDecoder.decodeObject(forKey: "adx_keywords") as? String
         assetId = aDecoder.decodeObject(forKey: "asset_id") as? Int
         byline = aDecoder.decodeObject(forKey: "byline") as? String
         column = aDecoder.decodeObject(forKey: "column") as? AnyObject
         desFacet = aDecoder.decodeObject(forKey: "des_facet") as? [String]
         geoFacet = aDecoder.decodeObject(forKey: "geo_facet") as? [String]
         id = aDecoder.decodeObject(forKey: "id") as? Int
         media = aDecoder.decodeObject(forKey: "media") as? [Media]
         orgFacet = aDecoder.decodeObject(forKey: "org_facet") as? [String]
         perFacet = aDecoder.decodeObject(forKey: "per_facet") as? String
         publishedDate = aDecoder.decodeObject(forKey: "published_date") as? String
         section = aDecoder.decodeObject(forKey: "section") as? String
         source = aDecoder.decodeObject(forKey: "source") as? String
         title = aDecoder.decodeObject(forKey: "title") as? String
         type = aDecoder.decodeObject(forKey: "type") as? String
         url = aDecoder.decodeObject(forKey: "url") as? String
         views = aDecoder.decodeObject(forKey: "views") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if abstractField != nil{
			aCoder.encode(abstractField, forKey: "abstract")
		}
		if adxKeywords != nil{
			aCoder.encode(adxKeywords, forKey: "adx_keywords")
		}
		if assetId != nil{
			aCoder.encode(assetId, forKey: "asset_id")
		}
		if byline != nil{
			aCoder.encode(byline, forKey: "byline")
		}
		if column != nil{
			aCoder.encode(column, forKey: "column")
		}
		if desFacet != nil{
			aCoder.encode(desFacet, forKey: "des_facet")
		}
		if geoFacet != nil{
			aCoder.encode(geoFacet, forKey: "geo_facet")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if media != nil{
			aCoder.encode(media, forKey: "media")
		}
		if orgFacet != nil{
			aCoder.encode(orgFacet, forKey: "org_facet")
		}
		if perFacet != nil{
			aCoder.encode(perFacet, forKey: "per_facet")
		}
		if publishedDate != nil{
			aCoder.encode(publishedDate, forKey: "published_date")
		}
		if section != nil{
			aCoder.encode(section, forKey: "section")
		}
		if source != nil{
			aCoder.encode(source, forKey: "source")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}
		if url != nil{
			aCoder.encode(url, forKey: "url")
		}
		if views != nil{
			aCoder.encode(views, forKey: "views")
		}

	}

}
