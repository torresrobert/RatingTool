//
//  Trending.swift
//  RatingTool
//
//  Created by Robert Torres on 11/27/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//

import UIKit

var currIndex = 0



class Trending: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //var refreshControl: UIRefreshControl = UIRefreshControl()

    @IBOutlet var tableView2: UITableView!
    
    @IBOutlet var currFav: UILabel!
    
    @IBAction func switch2Theat(_ sender: UIButton) {
        
      
        func tableView(_ tableView: UITableView, numberOfRowsInSection: Int)->Int{

            return theatres.count

        }
  
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath)
            cell.imageView?.image = nil
            
            cell.imageView!.image = UIImage(named: coffee[indexPath.row])
            
            return cell
            
        }
          currFav.text = fav1
        
    }
    
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffee.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView2.dequeueReusableCell(withIdentifier: "cell2trenddata", for: indexPath)
        
        // cell.imageView!.image = UIImage(named: "merchants_walk")
        cell.imageView!.image = UIImage(named: coffee[indexPath.row])
        //cell.layoutIfNeeded()
        //cell.textLabel?.text = theatres[indexPath.row]
        
        //currFav.text = fav2;
        
        return cell
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myCoffeeIndex = indexPath.row
        performSegue(withIdentifier: "sequeFromTrend", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currFav.text = fav2
       // view.addSubview(tableView2)
        tableView2.delegate = self
        tableView2.dataSource = self
        
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView2.reloadData()
    }
    
    
    

}

