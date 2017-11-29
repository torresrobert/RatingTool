//
//  Trending.swift
//  RatingTool
//
//  Created by Robert Torres on 11/27/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//

import UIKit

var currIndex = 0
var currArray = [String]()



class Trending: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //var refreshControl: UIRefreshControl = UIRefreshControl()

    @IBOutlet var tableView2: UITableView!
    
    @IBOutlet var currFav: UILabel!
    
    @IBAction func switch2Theat(_ sender: UIButton) {
        
        currArray = theatres
        
        tableView2.reloadData()
        
    }
    
    @IBAction func switch2coffee(_ sender: UIButton) {
        currArray = coffee
        
        tableView2.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currArray.count
    }
    
     public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath)
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell2trenddata")
    
        cell.imageView!.image = UIImage(named: currArray[indexPath.row])
       
        
        return cell
    }
    
     public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currIndex = indexPath.row
        performSegue(withIdentifier: "sequeFromTrend", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currFav.text = fav2
        tableView2.delegate = self
        tableView2.dataSource = self
         
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView2.reloadData()
    }
   
    
    

}

