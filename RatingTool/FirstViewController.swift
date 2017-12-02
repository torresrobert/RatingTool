//
//  FirstViewController.swift
//  RatingTool
//
//  Created by Robert Torres on 11/9/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


//favorites
var fav1 = "Theatres"
var fav2 = "Coffee"
var fav3 = "Restaurants"
var fav4 = "Parks and Rec"
var fav5 = "Fast Food"

var ref: DatabaseReference!

struct Users{
    var email = ""
    var name = ""
    var password = ""
}
var robert = Users(email: "robert@ratingtool.com",name: "Robert",password: "Panda0")

//var robert = Users(email: "robert@ratingtool.com",name: "Robert",password = "Panda0")

class FirstViewController: UIViewController {
    
    @IBOutlet var input_email: UITextField!
    
    @IBOutlet var input_password: UITextField!
    
    @IBOutlet var login: UIButton!
    
    @IBAction func attempt_login_email(_ sender: Any) {
            ref = Database.database().reference()
        
        if self.input_email.text == "" || self.input_password.text == "" {
            
            //Alert to tell the user that there was an error because they didn't fill anything in the textfields because they didn't fill anything in
            
            let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        } else {
        Auth.auth().signIn(withEmail: self.input_email.text!, password: self.input_password.text!) { (user, error) in
            
            if error == nil {
                
                //Print into the console if successfully logged in
                print("You have successfully logged in")
                
                //Go to the HomeViewController if the login is sucessful
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
                self.present(vc!, animated: true, completion: nil)
            }
            else {
                
                //Tells the user that there is an error and then gets firebase to tell them the error
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
            }

            }
        }
        
    }

        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // login.layer.cornerRadius=10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

