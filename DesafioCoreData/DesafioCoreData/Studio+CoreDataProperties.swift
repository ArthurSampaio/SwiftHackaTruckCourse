//
//  Studio+CoreDataProperties.swift
//  DesafioCoreData
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 Francini Carvalho. All rights reserved.
//

import Foundation
import CoreData


extension Studio {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Studio> {
        return NSFetchRequest<Studio>(entityName: "Studio");
    }

    @NSManaged public var filmesProduzidos: NSSet?

}

// MARK: Generated accessors for filmesProduzidos
extension Studio {

    @objc(addFilmesProduzidosObject:)
    @NSManaged public func addToFilmesProduzidos(_ value: Movie)

    @objc(removeFilmesProduzidosObject:)
    @NSManaged public func removeFromFilmesProduzidos(_ value: Movie)

    @objc(addFilmesProduzidos:)
    @NSManaged public func addToFilmesProduzidos(_ values: NSSet)

    @objc(removeFilmesProduzidos:)
    @NSManaged public func removeFromFilmesProduzidos(_ values: NSSet)

}
