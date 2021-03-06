//
//  CoreDataManager.swift
//  DesafioCoreData
//
//  Created by Francini Roberta de Carvalho on 13/01/17.
//  Copyright © 2017 Francini Carvalho. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {
    
    // MARK: - Core Data stack
    
    static func getContext() -> NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    static func insert(_ obj: NSManagedObject) -> Bool {
        
        var result = false
        CoreDataManager.getContext().insert(obj)
        
        do {
            try CoreDataManager.getContext().save()
            result = true
        } catch let error{
            print("Deu aguia ao Inserir: \(error)")
        }
        return result
        
    }
    
    static func remove (_ obj: NSManagedObject) -> Bool {
        
        var result = false
        CoreDataManager.getContext().delete(obj)
        
        do {
            try CoreDataManager.getContext().save()
            result = true
        } catch let error{
            print ("Deu aguia ao Remover: \(error)")
        }
        return result
    }

    
    static var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "DesafioCoreData")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    static func saveContext () {
        let context = CoreDataManager.persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
 
