//
//  DetailViewController.swift
//  Food_Hub
//
//  Created by Rohit on 11/16/17.
//  Copyright © 2017 Rohit. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var back_Btn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var RestaurantImageView: UIImageView!
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var check_Btn: UIButton!
    
    var restaurantImage: String = ""
     var restaurant:Restaurant!

    override func viewDidLoad() {
        super.viewDidLoad()
    
       RestaurantImageView.image = UIImage(named: restaurant.image)
        print(restaurantImage)
      // Map annotations
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(showMap))
        mapView.addGestureRecognizer(tapGestureRecognizer)
        
            }
    func showMap() {
        performSegue(withIdentifier: "showMap", sender: self)
    }

    @IBAction func back_Btn_Tapped(_ sender: Any) {
        _ =  navigationController?.popViewController(animated: true)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
        
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath) as! DetailCell
        // cnfigure the cell
        switch indexPath.row {
        case 0:
            cell.field_Lbl.text = "Name"
            cell.value_Lbl.text = restaurant.name
            
            cell.backgroundColor = UIColor.lightGray
        case 1:
            cell.field_Lbl.text = "Type"
            cell.value_Lbl.text = restaurant.type
            
        case 2:
            cell.field_Lbl.text = "Location"
            cell.value_Lbl.text = restaurant.location
            
        case 3:
            cell.field_Lbl.text = "phone"
            cell.value_Lbl.text = restaurant.phone
            
        case 4:
            cell.field_Lbl.text = "Been here"
            cell.value_Lbl.text = (restaurant.isVisited) ? "Yes, I've been here before. \(restaurant.rating)" : "No"
            
        default:
            cell.field_Lbl.text = ""
            cell.value_Lbl.text = ""
        }
        
        
        return cell
    }
   
    @IBAction func check_Btn_Tapped(_ sender: Any) {
        let reviewVc = storyboard?.instantiateViewController(withIdentifier: "ReviewVC") as! ReviewVC
        reviewVc.modalPresentationStyle = UIModalPresentationStyle.custom
        //reviewVc.transitioningDelegate = self
        //reviewVc.udelegate = self
        self.present(reviewVc, animated: true, completion: nil)
    }
    
    @IBAction func close(segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func ratingButtonTapped(segue: UIStoryboardSegue)	{
        
        if let rating = segue.identifier {
            
            restaurant.isVisited = true
            
            switch rating {
            case "great": restaurant.rating = "Absolutely love it! Must try."
            case "good": restaurant.rating = "Pretty good."
            case "dislike": restaurant.rating = "I don't like it."
            default: break
            }
            tableView.reloadData()

        }
        
            }
    override func prepare(for segue: UIStoryboardSegue,	sender:	Any?)	{
        if	segue.identifier ==	"showReview"	{
            let	destinationController = segue.destination as!	ReviewVC
            destinationController.restaurant = restaurant
        }	else	if	segue.identifier == "showMap"	{
            let	destinationController =	segue.destination	as!	MapViewController
            destinationController.restaurant = restaurant
        }
    }
    
    
    
   
}

class DetailCell: UITableViewCell {
    
    @IBOutlet weak var field_Lbl: UILabel!
    @IBOutlet weak var value_Lbl: UILabel!
    
}
