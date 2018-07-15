//
//  Extensions.swift
//  NYTimeExApp
//
//  Created by admin on 7/14/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import Foundation

extension UIViewController {
    
    func setNavigationBar() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "Menu_Icon"), style: UIBarButtonItemStyle.plain, target: self, action: #selector(menuClicked))
        self.navigationItem.leftBarButtonItem?.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.5829545427, green: 0.8788933158, blue: 0.656939236, alpha: 1)

    }
    
    @objc func menuClicked() {
        //handle menu clik event
    }
}
