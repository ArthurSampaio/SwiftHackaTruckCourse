//
//  Place.swift
//  ListOfPlaces
//
//  Created by Student on 3/16/17.
//  Copyright © 2017 Arthur Sampaio. All rights reserved.
//

import Foundation

class Place{
    
    let name : String
    let picture: String
    
    init(name: String, picture: String) {
        self.name = name
        self.picture = picture
    }
    
}


class PlaceDAO {
    
    static func getPlaces() -> [Place] {
        
        return [
            
            Place(name: "Church", picture: "church"),
            Place(name: "Gate", picture: "gate"),
            Place(name: "Garden", picture: "garden"),
            Place(name: "Rapture", picture: "rapture"),
            Place(name: "WatterFall", picture: "watterfall"),
            
        ]
        
    }
    
}
