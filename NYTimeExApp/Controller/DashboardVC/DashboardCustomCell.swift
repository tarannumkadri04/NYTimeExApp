//
//  DashboardCustomCell.swift
//  NYTimeExApp
//
//  Create by Tarannum Kadri on 14/7/2018
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DashboardCustomCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var imgArticle: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureUI(article : Result) {
        
        lblTitle.text = article.title
        lblDescription.text = article.byline
        lblName.text = article.source
        lblDate.text = article.publishedDate
        imgArticle.layer.cornerRadius = imgArticle.frame.width / 2
    }

}
