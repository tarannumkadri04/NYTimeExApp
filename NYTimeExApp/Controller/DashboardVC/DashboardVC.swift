//
//  DashboardVC.swift
//  NYTimeExApp
//
//  Create by Tarannum Kadri on 14/7/2018
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {
    
    //@IBOutlets
    @IBOutlet weak var tblArticle: UITableView!

    //Variables
    var article = [Result]()

    //MARK:- View life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        getArticleList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    //MARK:- Custom methods
    
    /*
     //Configure screen UI
    */
    func configureUI() {
        
        self.title = "NY Times Most Popular"
        setNavigationBar()
    }
    
    /*
     //Handle menu click event
     */
    override func menuClicked() {
        //handle menu clik event
    }
    
    /*
     //Get list of articles from server
     */
    func getArticleList() {
        
        DashboardManager.singleton.getAllArticles(success: { results in
            
            self.article = results!
            self.tblArticle.reloadData()
            
        }) { error in
            debugPrint("error = \(error.localizedDescription)")
        }
    }
}

//MARK:- UITableview data source and delegate methods

extension DashboardVC : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return article.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifer = "DashboardCustomCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifer, for: indexPath) as! DashboardCustomCell
        cell.selectionStyle = .none
        cell.configureUI(article: article[indexPath.row])

        return cell
    }
}
