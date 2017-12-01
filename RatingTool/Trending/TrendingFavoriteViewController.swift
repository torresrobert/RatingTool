//
//  TrendingFavoriteViewController.swift
//  RatingTool
//
//  Created by Robert Torres on 11/21/17.
//  Copyright © 2017 Robert Torres. All rights reserved.
//


import UIKit
import CoreLocation
import MapKit

////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////theatres////////////////////////////////////

struct Theatres{
    var Name = ""
    var Rating = 0
    var Address = ""
    var NumOfRatings = 0
    var varname = ""
    var latitude = 0.0
    var longitude = 0.0
    var messages = ["","","",""]
}

var merchants_walk = Theatres(Name: "Merchants Walk",Rating: 20,Address:"1301 Johnson Ferry Rd Marietta, GA  30068 United States", NumOfRatings: 2,varname: "merchants_walk",latitude: 33.977916,longitude: -84.427445, messages: ["Comfy seats, friendly staff, good prices, high quality sound system and screens.","Great people, great location, great experience!","Good food, good movies, and good service.",""])
var amc_theatres = Theatres(Name: "AMC Theatres",Rating: 40,Address:"3101 Cobb Pkwy Atlanta, GA  30339 United States", NumOfRatings: 10,varname: "amc_theatres",latitude: 33.879080 ,longitude: -84.456397, messages: ["Comfy seats, friendly staff, good prices, high quality sound system and screens.","Great people, great location, great experience!","Good food, good movies, and good service.",""])
var regal_cinemas = Theatres(Name: "Regal Cinemas",Rating: -20,Address:"3950 1st St Alpharetta, GA  30009 United States", NumOfRatings: 3,varname: "regal_cinemas",latitude: 34.071921,longitude: -84.276280, messages: ["The menu, burgers are good, but Nachos done with potato chips?","The theater is beautiful.  That said, the problem is the staff. ","They do need some cleaning in the bathrooms, but the seats inside of the theater are cozy and spacious",""])
var ncg_cinema = Theatres(Name: "NCG Cinemas",Rating: -30,Address:"1050 Powder Springs Rd SW Marietta, GA  30064 United States", NumOfRatings: 8,varname: "ncg_cinema",latitude: 33.927641,longitude: -84.572033, messages: ["Could be a bit cheaper on their food and drinks but I love this place.","Seats recline and there is plenty of room for people to walk in the aisles.","It's never packed, has reclining seats, free popcorn refills, super clean",""])
////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////coffee////////////////////////////////////////////
struct Coffee{
    var Name = ""
    var Rating = 0
    var Address = ""
    var NumOfRatings = 0
    var varname = ""
    var latitude = 0.0
    var longitude = 0.0
    var messages = ["","","",""]
}

var cool_beans = Coffee(Name: "Cool Beans",Rating: 40,Address:"31 Mill St, Marietta, GA 30060 United States", NumOfRatings: 8,varname: "cool_beans",latitude: 33.953265,longitude: -84.550748, messages: ["Excellent selection of drinks and the staff were pleasant and knowledgable","They have great prices, and their coffee blows Starbucks' out of the water!","Good bean options if you want to bring some home with you at a decent price",""])

var rev_coffee = Coffee(Name: "Rev Coffee",Rating: 40,Address:"1680 Spring Rd SE B, Smyrna, GA 30080", NumOfRatings: 8,varname: "rev_coffee",latitude: 33.882229,longitude: -84.504329, messages: ["Great atmosphere and service, quality coffee, lattes and smoothies","So yummy with fruit, granola and a scoop of peanut butter!","Great coffee and hard working staff, plus the place is simply charming.",""])

var revelator_coffee = Coffee(Name: "Revelator Coffee Company",Rating: 40,Address:"31 Mill St, Marietta, GA 30060 United States", NumOfRatings: 8,varname: "revelator_coffee",latitude: 33.786322,longitude: -84.411493, messages: ["Great place to work from home or spend a quiet weekend morning.","Free parking deck, outdoor seating, free Wi-Fi, excellent service.","Good staff, well thought out design and atmosphere.",""])

var starbucks = Coffee(Name: "Starbucks",Rating: 40,Address:"30 Whitlock Ave NW, Marietta, GA 30064", NumOfRatings: 8,varname: "starbucks",latitude: 33.953265,longitude: -84.550748, messages: ["Friendly service and as for the coffee and food?","I just paid over $9.00 for 1 piece of pumpkin cake and an iced chai tea latte.","Ordered a Grande black eye with caramel flavor and almond milk.",""])


////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////restaurants///////////////////////////////////////
struct Restaurants{
    var Name = ""
    var Rating = 0
    var Address = ""
    var NumOfRatings = 0
    var varname = ""
    var latitude = 0.0
    var longitude = 0.0
    var messages = ["","","",""]
}

var chilis_roswellrd = Restaurants(Name: "Chili's Grill & Bar",Rating: 40,Address:"4111 Roswell Rd, Marietta, GA 30062 United States", NumOfRatings: 8,varname: "chilis_roswellrd",latitude: 33.987891,longitude: -84.435986, messages: ["Great food from their special's menu for a good price.","The servers always seem too busy and forget my order.","Fun place to get drinks at and watch the game.","I really like trying new appetizers here."])

var taqueria_tsunami = Restaurants(Name: "Taqueria Tsunami",Rating: 40,Address:"70 S Park Square NE, Marietta, GA 30060 United States", NumOfRatings: 8,varname: "taqueria_tsunami",latitude: 33.952115,longitude: -84.549751, messages: ["Stylish place with a great selection.","Fun, new age atmosphere.","A lot of unique food for the price that you pay!","I would prefer a traditional taqueria.",""])

var stockyard_burgers = Restaurants(Name: "Stockyard Burgers and Bones",Rating: 40,Address:"26 Mill St, Marietta, GA 30060 United States", NumOfRatings: 8,varname: "stockyard_burgers",latitude: 33.953587,longitude: -84.550796, messages: ["Beautiful fountains and scenery.","I love walking the memorial path and reading the bricks.","",""])



////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////parks and rec///////////////////////////////////////
struct ParksAndRec{
    var Name = ""
    var Rating = 0
    var Address = ""
    var NumOfRatings = 0
    var varname = ""
    var latitude = 0.0
    var longitude = 0.0
    var messages = ["","","",""]
}

var kennesaw_mtn = ParksAndRec(Name: "Kennesaw Mountain National Battlefield Park",Rating: 40,Address:"900 Kennesaw Mountain Dr, Kennesaw, GA 30188 United States", NumOfRatings: 8,varname: "kennesaw_mtn",latitude: 33.983155,longitude: -84.577988, messages: ["History was made here!","Really enjoyable place to hike on the weekend","Always too crowded whenever I go.","Nicest park to visit close to where I live."])

var piedmont_prk = ParksAndRec(Name: "Piedmont Park",Rating: 40,Address:"400 Park Dr NE, Atlanta, GA 30306 United States", NumOfRatings: 8,varname: "piedmont_prk",latitude: 33.785756,longitude: -84.374304, messages: ["Awesome place to find pickup games for flag football","Always a fun event going on at this place","I love taking my dogs to the park.","Tons of rare pokemon!!"])

var centennial_prk = ParksAndRec(Name: "Centennial Olympic Park",Rating: 40,Address:"265 Park Ave W NW, Atlanta, GA 30313 United States", NumOfRatings: 8,varname: "centennial_prk",latitude: 33.759483,longitude: -84.392891, messages: ["Beautiful fountains and scenery.","I love walking the memorial path and reading the bricks.","Great place for Ultimate frisbee.","I went to a concert here and didn't like it at all."])

var goat_farm = ParksAndRec(Name: "The Goat Farm",Rating: 40,Address:"1200 Foster St NW, Atlanta, GA 30318 United States", NumOfRatings: 8,varname: "goat_farm",latitude: 33.786413,longitude:  -84.414615, messages: ["So be sure to bring cash to thank these wonderful people for their service!","Wonderful atmosphere and a really cool coffee shop next door.","Awesome place to shoot and APG is a great meetup for photographers",""])


////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
let geoCoder = CLGeocoder()

var tableView: UITableView!

let alert = UIAlertController(title: "AlertController Tutorial",
                              message: "Submit something",
                              preferredStyle: .alert)
// Submit button
let submitAction = UIAlertAction(title: "Submit", style: .default, handler: { (action) -> Void in
    // Get 1st TextField's text
    let textField = alert.textFields![0]
    //print(textField.text!)
    if(merchants_walk.messages[3]==""){
    merchants_walk.messages[3].append(textField.text!)
    //URLCache.shared.removeAllCachedResponses()
    }
    
})

// Cancel button
let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })




class TrendingFavoriteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    @IBAction func addRatingPressed(_ sender: Any) {
        //merchants walk
        if (merchants_walk.messages[3]==""){
        // Add 1 textField and customize it
        alert.addTextField { (textField: UITextField) in
            textField.keyboardAppearance = .dark
            textField.keyboardType = .default
            textField.autocorrectionType = .default
            textField.placeholder = "Type something here"
            textField.clearButtonMode = .whileEditing
        }
        // Add action buttons and present the Alert
        alert.addAction(submitAction)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        }
        else if (amc_theatres.messages[3]==""){
            // Add 1 textField and customize it
            alert.addTextField { (textField: UITextField) in
                textField.keyboardAppearance = .dark
                textField.keyboardType = .default
                textField.autocorrectionType = .default
                textField.placeholder = "Type something here"
                textField.clearButtonMode = .whileEditing
            }
            // Add action buttons and present the Alert
            alert.addAction(submitAction)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
        }
        else if (regal_cinemas.messages[3]==""){
            // Add 1 textField and customize it
            alert.addTextField { (textField: UITextField) in
                textField.keyboardAppearance = .dark
                textField.keyboardType = .default
                textField.autocorrectionType = .default
                textField.placeholder = "Type something here"
                textField.clearButtonMode = .whileEditing
            }
            // Add action buttons and present the Alert
            alert.addAction(submitAction)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
        }
        else if (ncg_cinema.messages[3]==""){
            // Add 1 textField and customize it
            alert.addTextField { (textField: UITextField) in
                textField.keyboardAppearance = .dark
                textField.keyboardType = .default
                textField.autocorrectionType = .default
                textField.placeholder = "Type something here"
                textField.clearButtonMode = .whileEditing
            }
            // Add action buttons and present the Alert
            alert.addAction(submitAction)
            alert.addAction(cancel)
            present(alert, animated: true, completion: nil)
        }
        
        
        else{
            createAlert(title: "Oops!", message: "Looks like you've already commented. Come back tomorrow!")
        }
        
    }
    @IBOutlet var tableView: UITableView!
   @IBOutlet weak var AddRating: UIButton!
   @IBOutlet weak var Back: UIButton!
   @IBOutlet weak var AvgRating: UIImageView!
    @IBOutlet weak var ImageOfCurrLoc: UIImageView!
    @IBOutlet var RecComms: UITableView!
    @IBOutlet weak var CurrentLoc: UILabel!
    @IBOutlet var RatingNum: UILabel!
    //@IBOutlet var cell: UITableViewCell!
    
    
    //works with 4 favs
    @IBAction func goToLoc(_ sender: Any) {
        
        if (currArray==theatres){
        ///get directions to THEATRES
        if (theatres[myTheatIndex]==(merchants_walk.varname)){
        let coordinate = CLLocationCoordinate2DMake(merchants_walk.latitude, merchants_walk.longitude)
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
        mapItem.name = merchants_walk.Name
        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
        ///get directions to amc
        }else if (theatres[myTheatIndex]==(amc_theatres.varname)) {
            let coordinate = CLLocationCoordinate2DMake(amc_theatres.latitude, amc_theatres.longitude)
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
            mapItem.name = amc_theatres.Name
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
         ///get directions to regal
        }else if (theatres[myTheatIndex]==(regal_cinemas.varname)) {
            let coordinate = CLLocationCoordinate2DMake(regal_cinemas.latitude, regal_cinemas.longitude)
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
            mapItem.name = regal_cinemas.Name
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
         ///get directions to ncg
        }else if (theatres[myTheatIndex]==(ncg_cinema.varname)) {
            let coordinate = CLLocationCoordinate2DMake(ncg_cinema.latitude, ncg_cinema.longitude)
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
            mapItem.name = ncg_cinema.Name
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
        }
        }else if(currArray==coffee){
            ///get directions to COFFEE
            if (coffee[myTheatIndex]==(cool_beans.varname)){
                let coordinate = CLLocationCoordinate2DMake(cool_beans.latitude, cool_beans.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = cool_beans.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                ///get directions to amc
            }else if (coffee[myTheatIndex]==(rev_coffee.varname)) {
                let coordinate = CLLocationCoordinate2DMake(rev_coffee.latitude, rev_coffee.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = rev_coffee.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                ///get directions to regal
            }else if (coffee[myTheatIndex]==(revelator_coffee.varname)) {
                let coordinate = CLLocationCoordinate2DMake(revelator_coffee.latitude, revelator_coffee.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = revelator_coffee.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                ///get directions to ncg
            }else if (coffee[myTheatIndex]==(starbucks.varname)) {
                let coordinate = CLLocationCoordinate2DMake(starbucks.latitude, starbucks.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = starbucks.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
            }
        }else if(currArray==restaurants){
            ///get directions to RESTAURANTS
            if (restaurants[myTheatIndex]==(chilis_roswellrd.varname)){
                let coordinate = CLLocationCoordinate2DMake(chilis_roswellrd.latitude, chilis_roswellrd.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = chilis_roswellrd.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                ///get directions to amc
            }else if (restaurants[myTheatIndex]==(taqueria_tsunami.varname)) {
                let coordinate = CLLocationCoordinate2DMake(taqueria_tsunami.latitude, taqueria_tsunami.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = taqueria_tsunami.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                ///get directions to regal
            }else if (restaurants[myTheatIndex]==(stockyard_burgers.varname)) {
                let coordinate = CLLocationCoordinate2DMake(stockyard_burgers.latitude, stockyard_burgers.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = stockyard_burgers.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
            }
            
        }else if(currArray==parks_and_rec){
            ///get directions to PARKS AND REC
            if (parks_and_rec[myTheatIndex]==(kennesaw_mtn.varname)){
                let coordinate = CLLocationCoordinate2DMake(kennesaw_mtn.latitude, kennesaw_mtn.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = kennesaw_mtn.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                ///get directions to amc
            }else if (parks_and_rec[myTheatIndex]==(piedmont_prk.varname)) {
                let coordinate = CLLocationCoordinate2DMake(piedmont_prk.latitude, piedmont_prk.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = piedmont_prk.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                ///get directions to regal
            }else if (parks_and_rec[myTheatIndex]==(centennial_prk.varname)) {
                let coordinate = CLLocationCoordinate2DMake(centennial_prk.latitude, centennial_prk.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = centennial_prk.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
                ///get directions to ncg
            }else if (parks_and_rec[myTheatIndex]==(goat_farm.varname)) {
                let coordinate = CLLocationCoordinate2DMake(goat_farm.latitude, goat_farm.longitude)
                let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
                mapItem.name = goat_farm.Name
                mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
            }
        }else{
            print("nothing works")
        }
    }
    
    @IBOutlet var goToLocBttn: UIButton!
    
    
    @IBOutlet var MapOfCurrLoc: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTheatIndex = currIndex
        myCoffeeIndex = currIndex
        myRestauIndex = currIndex
        myParkRecIndex = currIndex
        
        
        AddRating.layer.cornerRadius=10
        goToLocBttn.layer.cornerRadius=10
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        if (currArray == theatres){
        
        if (theatres[myTheatIndex]==(merchants_walk.varname)){
            CurrentLoc.text = merchants_walk.Name
            ImageOfCurrLoc.image = UIImage(named: merchants_walk.varname)
            RatingNum.text = String(merchants_walk.Rating)
            
            //avgerage rating/////////
            if (merchants_walk.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            //////////////////////////
            
            //current location handler/////////////////////////
            let geocoder = CLGeocoder()
            let address = merchants_walk.Address
            geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                if((error) != nil){
                    print("Error", error ?? "")
                }
                if let placemark = placemarks?.first {
                    let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                   // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                  
                    let annotation = MKPointAnnotation()
                    let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                    annotation.coordinate = centerCoordinate
                    annotation.title = merchants_walk.Name
                    self.MapOfCurrLoc.addAnnotation(annotation)
                    let span = MKCoordinateSpanMake(0.1, 0.1)
                    let region = MKCoordinateRegionMake(centerCoordinate, span)
                    self.MapOfCurrLoc.region = region

                }
            })
            ////////////////////////////////////////////////////
            
            
            
        }else if (theatres[myTheatIndex]==(amc_theatres.varname)){
            CurrentLoc.text = amc_theatres.Name
            ImageOfCurrLoc.image = UIImage(named: amc_theatres.varname)
            RatingNum.text = String(amc_theatres.Rating)
            
            //avgerage rating/////////
            if (amc_theatres.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            
            let geocoder = CLGeocoder()
            let address = amc_theatres.Address
            geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                if((error) != nil){
                    print("Error", error ?? "")
                }
                if let placemark = placemarks?.first {
                    let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                    // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                    
                    let annotation = MKPointAnnotation()
                    let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                    annotation.coordinate = centerCoordinate
                    annotation.title = merchants_walk.Name
                    self.MapOfCurrLoc.addAnnotation(annotation)
                    let span = MKCoordinateSpanMake(0.1, 0.1)
                    let region = MKCoordinateRegionMake(centerCoordinate, span)
                    self.MapOfCurrLoc.region = region
                    
                    
                    
                    
                }
            })
            ////////////////////////

        }else if (theatres[myTheatIndex]==(regal_cinemas.varname)){
            CurrentLoc.text = regal_cinemas.Name
            ImageOfCurrLoc.image = UIImage(named: regal_cinemas.varname)
            RatingNum.text = String(regal_cinemas.Rating)
            
            //avgerage rating/////////
            if (regal_cinemas.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            
            let geocoder = CLGeocoder()
            let address = regal_cinemas.Address
            geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                if((error) != nil){
                    print("Error", error ?? "")
                }
                if let placemark = placemarks?.first {
                    let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                    // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                    
                    let annotation = MKPointAnnotation()
                    let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                    annotation.coordinate = centerCoordinate
                    annotation.title = merchants_walk.Name
                    self.MapOfCurrLoc.addAnnotation(annotation)
                    let span = MKCoordinateSpanMake(0.1, 0.1)
                    let region = MKCoordinateRegionMake(centerCoordinate, span)
                    self.MapOfCurrLoc.region = region
 
                }
            })
            ////////////////////////
  
        }else if (theatres[myTheatIndex]==(ncg_cinema.varname)){
            CurrentLoc.text = ncg_cinema.Name
            ImageOfCurrLoc.image = UIImage(named: ncg_cinema.varname)
            RatingNum.text = String(ncg_cinema.Rating)
            
            
            //avgerage rating/////////
            if (ncg_cinema.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            ////////////////////////
            let geocoder = CLGeocoder()
            let address = ncg_cinema.Address
            geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                if((error) != nil){
                    print("Error", error ?? "")
                }
                if let placemark = placemarks?.first {
                    let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                    // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                    
                    let annotation = MKPointAnnotation()
                    let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                    annotation.coordinate = centerCoordinate
                    annotation.title = merchants_walk.Name
                    self.MapOfCurrLoc.addAnnotation(annotation)
                    let span = MKCoordinateSpanMake(0.1, 0.1)
                    let region = MKCoordinateRegionMake(centerCoordinate, span)
                    self.MapOfCurrLoc.region = region
                    
                }
            })
            
            
            
        }
            
        }else if (currArray == coffee){
            
            
            
            if (coffee[myCoffeeIndex]==(cool_beans.varname)){
                CurrentLoc.text = cool_beans.Name
                ImageOfCurrLoc.image = UIImage(named: cool_beans.varname)
                RatingNum.text = String(cool_beans.Rating)
                
                //avgerage rating/////////
                if (cool_beans.Rating<0){
                    AvgRating.image = UIImage(named: "Dislike Icon")
                }else{
                    AvgRating.image = UIImage(named: "Like Icon")
                }
                //////////////////////////
                
                //current location handler/////////////////////////
                let geocoder = CLGeocoder()
                let address = cool_beans.Address
                geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                    if((error) != nil){
                        print("Error", error ?? "")
                    }
                    if let placemark = placemarks?.first {
                        let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                        // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                        
                        let annotation = MKPointAnnotation()
                        let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                        annotation.coordinate = centerCoordinate
                        annotation.title = cool_beans.Name
                        self.MapOfCurrLoc.addAnnotation(annotation)
                        let span = MKCoordinateSpanMake(0.1, 0.1)
                        let region = MKCoordinateRegionMake(centerCoordinate, span)
                        self.MapOfCurrLoc.region = region
                        
                    }
                })
                ////////////////////////////////////////////////////
                
                
                
            }else if (coffee[myCoffeeIndex]==(rev_coffee.varname)){
                CurrentLoc.text = rev_coffee.Name
                ImageOfCurrLoc.image = UIImage(named: rev_coffee.varname)
                RatingNum.text = String(rev_coffee.Rating)
                
                //avgerage rating/////////
                if (rev_coffee.Rating<0){
                    AvgRating.image = UIImage(named: "Dislike Icon")
                }else{
                    AvgRating.image = UIImage(named: "Like Icon")
                }
                
                let geocoder = CLGeocoder()
                let address = revelator_coffee.Address
                geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                    if((error) != nil){
                        print("Error", error ?? "")
                    }
                    if let placemark = placemarks?.first {
                        let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                        // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                        
                        let annotation = MKPointAnnotation()
                        let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                        annotation.coordinate = centerCoordinate
                        annotation.title = rev_coffee.Name
                        self.MapOfCurrLoc.addAnnotation(annotation)
                        let span = MKCoordinateSpanMake(0.1, 0.1)
                        let region = MKCoordinateRegionMake(centerCoordinate, span)
                        self.MapOfCurrLoc.region = region
                        
                        
                        
                        
                    }
                })
                ////////////////////////
                
            }else if (coffee[myCoffeeIndex]==(revelator_coffee.varname)){
                CurrentLoc.text = revelator_coffee.Name
                ImageOfCurrLoc.image = UIImage(named: revelator_coffee.varname)
                RatingNum.text = String(revelator_coffee.Rating)
                
                //avgerage rating/////////
                if (revelator_coffee.Rating<0){
                    AvgRating.image = UIImage(named: "Dislike Icon")
                }else{
                    AvgRating.image = UIImage(named: "Like Icon")
                }
                
                let geocoder = CLGeocoder()
                let address = revelator_coffee.Address
                geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                    if((error) != nil){
                        print("Error", error ?? "")
                    }
                    if let placemark = placemarks?.first {
                        let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                        // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                        
                        let annotation = MKPointAnnotation()
                        let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                        annotation.coordinate = centerCoordinate
                        annotation.title = revelator_coffee.Name
                        self.MapOfCurrLoc.addAnnotation(annotation)
                        let span = MKCoordinateSpanMake(0.1, 0.1)
                        let region = MKCoordinateRegionMake(centerCoordinate, span)
                        self.MapOfCurrLoc.region = region
                        
                    }
                })
                ////////////////////////
                
            }else if (coffee[myCoffeeIndex]==(starbucks.varname)){
                CurrentLoc.text = starbucks.Name
                ImageOfCurrLoc.image = UIImage(named: starbucks.varname)
                RatingNum.text = String(starbucks.Rating)
                
                
                //avgerage rating/////////
                if (starbucks.Rating<0){
                    AvgRating.image = UIImage(named: "Dislike Icon")
                }else{
                    AvgRating.image = UIImage(named: "Like Icon")
                }
                ////////////////////////
                let geocoder = CLGeocoder()
                let address = starbucks.Address
                geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                    if((error) != nil){
                        print("Error", error ?? "")
                    }
                    if let placemark = placemarks?.first {
                        let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                        // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                        
                        let annotation = MKPointAnnotation()
                        let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                        annotation.coordinate = centerCoordinate
                        annotation.title = starbucks.Name
                        self.MapOfCurrLoc.addAnnotation(annotation)
                        let span = MKCoordinateSpanMake(0.1, 0.1)
                        let region = MKCoordinateRegionMake(centerCoordinate, span)
                        self.MapOfCurrLoc.region = region
                        
                    }
                })
                
                
                
            }
            
            
            
            
        }else if (currArray == restaurants){
            
            
            if (restaurants[myRestauIndex]==(chilis_roswellrd.varname)){
                CurrentLoc.text = chilis_roswellrd.Name
                ImageOfCurrLoc.image = UIImage(named: chilis_roswellrd.varname)
                RatingNum.text = String(chilis_roswellrd.Rating)
                
                //avgerage rating/////////
                if (chilis_roswellrd.Rating<0){
                    AvgRating.image = UIImage(named: "Dislike Icon")
                }else{
                    AvgRating.image = UIImage(named: "Like Icon")
                }
                //////////////////////////
                
                //current location handler/////////////////////////
                let geocoder = CLGeocoder()
                let address = chilis_roswellrd.Address
                geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                    if((error) != nil){
                        print("Error", error ?? "")
                    }
                    if let placemark = placemarks?.first {
                        let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                        // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                        
                        let annotation = MKPointAnnotation()
                        let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                        annotation.coordinate = centerCoordinate
                        annotation.title = chilis_roswellrd.Name
                        self.MapOfCurrLoc.addAnnotation(annotation)
                        let span = MKCoordinateSpanMake(0.1, 0.1)
                        let region = MKCoordinateRegionMake(centerCoordinate, span)
                        self.MapOfCurrLoc.region = region
                        
                    }
                })
                ////////////////////////////////////////////////////
                
                
                
            }else if (restaurants[myRestauIndex]==(taqueria_tsunami.varname)){
                CurrentLoc.text = taqueria_tsunami.Name
                ImageOfCurrLoc.image = UIImage(named: taqueria_tsunami.varname)
                RatingNum.text = String(taqueria_tsunami.Rating)
                
                //avgerage rating/////////
                if (taqueria_tsunami.Rating<0){
                    AvgRating.image = UIImage(named: "Dislike Icon")
                }else{
                    AvgRating.image = UIImage(named: "Like Icon")
                }
                
                let geocoder = CLGeocoder()
                let address = taqueria_tsunami.Address
                geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                    if((error) != nil){
                        print("Error", error ?? "")
                    }
                    if let placemark = placemarks?.first {
                        let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                        // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                        
                        let annotation = MKPointAnnotation()
                        let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                        annotation.coordinate = centerCoordinate
                        annotation.title = taqueria_tsunami.Name
                        self.MapOfCurrLoc.addAnnotation(annotation)
                        let span = MKCoordinateSpanMake(0.1, 0.1)
                        let region = MKCoordinateRegionMake(centerCoordinate, span)
                        self.MapOfCurrLoc.region = region
                        
                        
                        
                        
                    }
                })
                ////////////////////////
                
            }else if (restaurants[myCoffeeIndex]==(stockyard_burgers.varname)){
                CurrentLoc.text = stockyard_burgers.Name
                ImageOfCurrLoc.image = UIImage(named: stockyard_burgers.varname)
                RatingNum.text = String(stockyard_burgers.Rating)
                
                //avgerage rating/////////
                if (stockyard_burgers.Rating<0){
                    AvgRating.image = UIImage(named: "Dislike Icon")
                }else{
                    AvgRating.image = UIImage(named: "Like Icon")
                }
                
                let geocoder = CLGeocoder()
                let address = stockyard_burgers.Address
                geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                    if((error) != nil){
                        print("Error", error ?? "")
                    }
                    if let placemark = placemarks?.first {
                        let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                        // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                        
                        let annotation = MKPointAnnotation()
                        let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                        annotation.coordinate = centerCoordinate
                        annotation.title = stockyard_burgers.Name
                        self.MapOfCurrLoc.addAnnotation(annotation)
                        let span = MKCoordinateSpanMake(0.1, 0.1)
                        let region = MKCoordinateRegionMake(centerCoordinate, span)
                        self.MapOfCurrLoc.region = region
                        
                    }
                })
                ////////////////////////
                
            }
            
            
            
        }else if (currArray == parks_and_rec){
            
        
            
        if (parks_and_rec[myParkRecIndex]==(kennesaw_mtn.varname)){
            CurrentLoc.text = kennesaw_mtn.Name
            ImageOfCurrLoc.image = UIImage(named: kennesaw_mtn.varname)
            RatingNum.text = String(kennesaw_mtn.Rating)
            
            //avgerage rating/////////
            if (kennesaw_mtn.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            //////////////////////////
            
            //current location handler/////////////////////////
            let geocoder = CLGeocoder()
            let address = kennesaw_mtn.Address
            geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                if((error) != nil){
                    print("Error", error ?? "")
                }
                if let placemark = placemarks?.first {
                    let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                    // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                    
                    let annotation = MKPointAnnotation()
                    let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                    annotation.coordinate = centerCoordinate
                    annotation.title = kennesaw_mtn.Name
                    self.MapOfCurrLoc.addAnnotation(annotation)
                    let span = MKCoordinateSpanMake(0.1, 0.1)
                    let region = MKCoordinateRegionMake(centerCoordinate, span)
                    self.MapOfCurrLoc.region = region
                    
                }
            })
            ////////////////////////////////////////////////////
            
            
            
        }else if (parks_and_rec[myParkRecIndex]==(piedmont_prk.varname)){
            CurrentLoc.text = piedmont_prk.Name
            ImageOfCurrLoc.image = UIImage(named: piedmont_prk.varname)
            RatingNum.text = String(piedmont_prk.Rating)
            
            //avgerage rating/////////
            if (piedmont_prk.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            
            let geocoder = CLGeocoder()
            let address = piedmont_prk.Address
            geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                if((error) != nil){
                    print("Error", error ?? "")
                }
                if let placemark = placemarks?.first {
                    let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                    // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                    
                    let annotation = MKPointAnnotation()
                    let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                    annotation.coordinate = centerCoordinate
                    annotation.title = piedmont_prk.Name
                    self.MapOfCurrLoc.addAnnotation(annotation)
                    let span = MKCoordinateSpanMake(0.1, 0.1)
                    let region = MKCoordinateRegionMake(centerCoordinate, span)
                    self.MapOfCurrLoc.region = region
                    
                    
                    
                    
                }
            })
            ////////////////////////
            
        }else if (parks_and_rec[myParkRecIndex]==(centennial_prk.varname)){
            CurrentLoc.text = centennial_prk.Name
            ImageOfCurrLoc.image = UIImage(named: centennial_prk.varname)
            RatingNum.text = String(centennial_prk.Rating)
            
            //avgerage rating/////////
            if (centennial_prk.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            
            let geocoder = CLGeocoder()
            let address = centennial_prk.Address
            geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                if((error) != nil){
                    print("Error", error ?? "")
                }
                if let placemark = placemarks?.first {
                    let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                    // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                    
                    let annotation = MKPointAnnotation()
                    let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                    annotation.coordinate = centerCoordinate
                    annotation.title = centennial_prk.Name
                    self.MapOfCurrLoc.addAnnotation(annotation)
                    let span = MKCoordinateSpanMake(0.1, 0.1)
                    let region = MKCoordinateRegionMake(centerCoordinate, span)
                    self.MapOfCurrLoc.region = region
                    
                }
            })
            ////////////////////////
            
        }else if (parks_and_rec[myParkRecIndex]==(goat_farm.varname)){
            CurrentLoc.text = goat_farm.Name
            ImageOfCurrLoc.image = UIImage(named: goat_farm.varname)
            RatingNum.text = String(goat_farm.Rating)
            
            
            //avgerage rating/////////
            if (goat_farm.Rating<0){
                AvgRating.image = UIImage(named: "Dislike Icon")
            }else{
                AvgRating.image = UIImage(named: "Like Icon")
            }
            ////////////////////////
            let geocoder = CLGeocoder()
            let address = goat_farm.Address
            geocoder.geocodeAddressString(address, completionHandler: {(placemarks, error) -> Void in
                if((error) != nil){
                    print("Error", error ?? "")
                }
                if let placemark = placemarks?.first {
                    let coordinates:CLLocationCoordinate2D = placemark.location!.coordinate
                    // print("Lat: \(coordinates.latitude) -- Long: \(coordinates.longitude)")
                    
                    let annotation = MKPointAnnotation()
                    let centerCoordinate = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude:coordinates.longitude)
                    annotation.coordinate = centerCoordinate
                    annotation.title = goat_farm.Name
                    self.MapOfCurrLoc.addAnnotation(annotation)
                    let span = MKCoordinateSpanMake(0.1, 0.1)
                    let region = MKCoordinateRegionMake(centerCoordinate, span)
                    self.MapOfCurrLoc.region = region
                    
                }
            })
            
            
            
            }
        
        
        }}
    


    
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                if (theatres[myTheatIndex]==(merchants_walk.varname)){
                    return merchants_walk.messages.count;
                    ///get num of messages for amc
                }else if (theatres[myTheatIndex]==(amc_theatres.varname)) {
                    return amc_theatres.messages.count;
                    ///get num of messages for regal
                }else if (theatres[myTheatIndex]==(regal_cinemas.varname)) {
                    return regal_cinemas.messages.count;
                    ///get num of messages for ncg
                }else if (theatres[myTheatIndex]==(ncg_cinema.varname)) {
                    return ncg_cinema.messages.count;
                }else{
                    return 0
                    
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellMess", for: indexPath)
                if (theatres[myTheatIndex]==(merchants_walk.varname)){
        cell.textLabel!.text = merchants_walk.messages[indexPath.row]
        return (cell)
        ///get num of messages for amc
               }else if (theatres[myTheatIndex]==(amc_theatres.varname)) {
                    cell.textLabel?.text = amc_theatres.messages[indexPath.row]
                    return cell
                    //return cellMessages
                    ///get num of messages for regal
                }else if (theatres[myTheatIndex]==(regal_cinemas.varname)) {
                    cell.textLabel?.text = regal_cinemas.messages[indexPath.row]
                    return cell
                    //return cellMessages
                    ///get num of messages for ncg
                }else if (theatres[myTheatIndex]==(ncg_cinema.varname)) {
                    cell.textLabel?.text = ncg_cinema.messages[indexPath.row]
                    return cell
                    //return cellMessages
                }else{
                    return cell
                }
        
        
    }
    
    func createAlert (title:String!, message:String!){
        let alert = UIAlertController(title: title,message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok",style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
    }



