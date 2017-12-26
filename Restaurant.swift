//
//  Restaurant.swift
//  Food_Hub
//
//  Created by Rohit on 11/26/17.
//  Copyright © 2017 Rohit. All rights reserved.
//

import UIKit


class Restaurant {
    
    var name = ""
    var type = ""
    var location = ""
    var image = ""
    var isVisited = false
    var rating = ""
    var phone = ""
    
    init(name: String, type: String, location: String, image: String,phone: String, isVisited: Bool) {
        self.name = name
        self.image = image
        self.location = location
        self.type = type
        self.phone = phone
        self.isVisited = isVisited
    }
    
}

// initialization is the process of prepairing an instance of a class. An instance is a concrete occurance of any object, 


/*In	Swift,	you	use	self	to	differentiate	between	property	names	and	arguments	in
initializers.	Because	the	arguments	have	the	same	name	as	the	properties,	we
use	self	to	refer	to	the	property	of	the	class.*/
