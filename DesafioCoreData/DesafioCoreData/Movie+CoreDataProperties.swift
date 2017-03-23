//
//  Movie+CoreDataProperties.swift
//  DesafioCoreData
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 Francini Carvalho. All rights reserved.
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie");
    }

    @NSManaged public var titulo: String?
    @NSManaged public var diretor: String?
    @NSManaged public var ano: Int16
    @NSManaged public var produtora: Studio?

}
