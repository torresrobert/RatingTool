//
//  ProfileTabViewController.swift
//  RatingTool
//
//  Created by Robert Torres on 11/20/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//

import UIKit


var myname = "Steve"
var anyFriendReqs = false

var myRecCommRating = [20,-14,20,30,0]
var myRecComm = ["Cool hipster place","Strange place","Very interesting facility!","Just because it's awesome...","\t   and I know many of the artist."]

var tableViewRecComms: UITableView!

class ProfileTabViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myRecComm.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewRecComms.dequeueReusableCell(withIdentifier: "cellRecComm", for: indexPath)
        
        if(myRecCommRating[indexPath.row]<0){
        cell.imageView!.image = UIImage(named: "Dislike Icon")
        }else if((myRecCommRating[indexPath.row]>0)){
        cell.imageView!.image = UIImage(named: "Like Icon")
            
        
        }else{
            
        }
        cell.textLabel!.text = myRecComm[indexPath.row]
        return (cell)
    }
    @IBOutlet var tableViewRecComms: UITableView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profile_pic: UIImageView!
    @IBOutlet weak var view_requests: UIButton!
    @IBOutlet weak var manage_favs: UIButton!
    

    
    
    @IBAction func showFriendReqs(_ sender: UIButton) {
        
        if (!anyFriendReqs){
            createAlert(title: "No New Requests", message: "Oops, looks like no new friend requests right now. Check back later!")
            alert.addAction(submitAction)

            present(alert, animated: true, completion: nil)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        view.addSubview(tableViewRecComms)
        tableViewRecComms.delegate = self
        tableViewRecComms.dataSource = self
        
        
        view_requests.layer.cornerRadius = 10;
        manage_favs.layer.cornerRadius = 10;
        name.text = myname
        profile_pic.image = UIImage(named: "You")
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createAlert (title:String!, message:String!){
        let alert = UIAlertController(title: title,message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok",style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}
