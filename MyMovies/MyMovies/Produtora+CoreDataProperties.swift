//
//  Produtora+CoreDataProperties.swift
//  MyMovies
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 Arthur Sampaio. All rights reserved.
//

import Foundation
import CoreData


extension Produtora {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Produtora> {
        return NSFetchRequest<Produtora>(entityName: "Produtora");
    }

    @NSManaged public var producedMovies: NSSet?

}

// MARK: Generated accessors for producedMovies
extension Produtora {

    @objc(addProducedMoviesObject:)
    @NSManaged public func addToProducedMovies(_ value: Movie)

    @objc(removeProducedMoviesObject:)
    @NSManaged public func removeFromProducedMovies(_ value: Movie)

    @objc(addProducedMovies:)
    @NSManaged public func addToProducedMovies(_ values: NSSet)

    @objc(removeProducedMovies:)
    @NSManaged public func removeFromProducedMovies(_ values: NSSet)

}
