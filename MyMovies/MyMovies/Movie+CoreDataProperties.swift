//
//  Movie+CoreDataProperties.swift
//  MyMovies
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 Arthur Sampaio. All rights reserved.
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie");
    }

    @NSManaged public var ano: Int16
    @NSManaged public var director: String?
    @NSManaged public var tittle: String?
    @NSManaged public var producer: Produtora?

}
