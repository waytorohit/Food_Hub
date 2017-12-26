//
//  RestaurantViewController.swift
//  Food_Hub
//
//  Created by Rohit on 11/16/17.
//  Copyright © 2017 Rohit. All rights reserved.
//

import UIKit

class RestaurantViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", image: "cafedeadend.jpg", phone: "232-923423", isVisited: false),
        Restaurant(name: "Homei", type: "Cafe", location: "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong", image: "homei.jpg", phone: "348-233423", isVisited: false),
        Restaurant(name: "Teakha", type: "Tea House", location: "Shop B, 18 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", image: "teakha.jpg", phone: "354-243523", isVisited: false),
        Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Shop B, 20 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", image: "cafeloisl.jpg", phone: "453-333423", isVisited: false),
        Restaurant(name: "Petite Oyster", type: "French", location: "24 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", image: "petiteoyster.jpg", phone: "983-284334", isVisited: false),
        Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Shop J-K., 200 Hollywood Road, SOHO, Sheung Wan, Hong Kong", image: "forkeerestaurant.jpg", phone: "232-434222", isVisited: false),
        Restaurant(name: "Po's Atelier", type: "Bakery", location: "G/F, 62 Po Hing Fong, Sheung Wan, Hong Kong", image: "posatelier.jpg", phone: "234-834322", isVisited: false),
        Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "633 Bourke St Sydney New South Wales 2010 Surry Hills", image: "bourkestreetbakery.jpg", phone: "982-434343", isVisited: false),
        Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "412-414 George St Sydney New South Wales", image: "haighschocolate.jpg", phone: "734-232323", isVisited: false),
        Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Shop 1 61 York St Sydney New South Wales", image: "palominoespresso.jpg", phone: "872-734343", isVisited: false),
        Restaurant(name: "Upstate", type: "American", location: "95 1st Ave New York, NY 10003", image: "upstate.jpg", phone: "343-233221", isVisited: false),
        Restaurant(name: "Traif", type: "American", location: "229 S 4th St Brooklyn, NY 11211", image: "traif.jpg", phone: "985-723623", isVisited: false),
        Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "445 Graham Ave Brooklyn, NY 11211", image: "grahamavenuemeats.jpg", phone: "455-232345", isVisited: false),
        Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "413 Graham Ave Brooklyn, NY 11211", image: "wafflewolf.jpg", phone: "434-232322", isVisited: false),
        Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "18 Bedford Ave Brooklyn, NY 11222", image: "fiveleaves.jpg", phone: "343-234553", isVisited: false),
        Restaurant(name: "Cafe Lore", type: "Latin American", location: "Sunset Park 4601 4th Ave Brooklyn, NY 11220", image: "cafelore.jpg", phone: "342-455433", isVisited: false),
        Restaurant(name: "Confessional", type: "Spanish", location: "308 E 6th St New York, NY 10003", image: "confessional.jpg", phone: "643-332323", isVisited: false),
        Restaurant(name: "Barrafina", type: "Spanish", location: "54 Frith Street London W1D 4SL United Kingdom", image: "barrafina.jpg", phone: "542-343434", isVisited: false),
        Restaurant(name: "Donostia", type: "Spanish", location: "10 Seymour Place London W1H 7ND United Kingdom", image: "donostia.jpg", phone: "722-232323", isVisited: false),
        Restaurant(name: "Royal Oak", type: "British", location: "2 Regency Street London SW1P 4BZ United Kingdom", image: "royaloak.jpg", phone: "343-988834", isVisited: false),
        Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "22 Charlwood Street London SW1V 2DY Pimlico", image: "grahamavenuemeats.jpg", phone: "432-344050", isVisited: false)
    ]

    
//    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "PetiteOyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh'sChocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats","Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina",
//                           "Donostia", "Royal Oak"]
//    
//    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg",
//                            "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg",
//                            "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg",
//                            "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg",
//                            "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg",
//                            "donostia.jpg", "royaloak.jpg"]
//    
//    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong",
//                               "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "NewYork", "New York", "New York", "New York", "New York", "New York", "New York",
//                               "London", "London", "London", "London"]
//    
//    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "AustrianCausual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "AmericanSeafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee&Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return restaurants.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantCell
        cell.name_Lbl.text = restaurants[indexPath.row].name
        cell.location_Lbl.text = restaurants[indexPath.row].location
        cell.type_Lbl.text = restaurants[indexPath.row].type
        cell.ImgView.image = UIImage(named: restaurants[indexPath.row].image)
        cell.ImgView.layer.cornerRadius = 28.0
        cell.ImgView.clipsToBounds = true
        
        return cell
        
    }
    // Deletion of row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            restaurants.remove(at: indexPath.row)
            
            
        }
        
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
   	override func prepare(for segue: UIStoryboardSegue, sender: Any?)	{
        if	segue.identifier ==	"DetailViewController"	{
            if	let	indexPath = tableView.indexPathForSelectedRow	{
        let	destinationController = segue.destination as! DetailViewController
                destinationController.restaurant = restaurants[indexPath.row]
            }
        }
    }
    
    
}



class RestaurantCell: UITableViewCell {
    
    
    @IBOutlet weak var ImgView: UIImageView!
    @IBOutlet weak var name_Lbl: UILabel!
    @IBOutlet weak var location_Lbl: UILabel!
    @IBOutlet weak var type_Lbl: UILabel!
    @IBOutlet weak var phone_Lbl: UILabel!
    
    
    
    
    
    
    
    
    
    
}
