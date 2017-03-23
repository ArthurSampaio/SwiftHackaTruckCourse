//
//  MovieDAO.swift
//  MyMovies
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 Arthur Sampaio. All rights reserved.
//

import Foundation
import CoreData


class MovieDAO {
    
    // add
    // remove
    // search
    // change
    
    static func addMovie(_ movie: Movie) -> Bool {
        
        return CoreDataManager.insert(movie)
        
    }
    
    static func removeMovie(_ movie: Movie) -> Bool {
        
        return CoreDataManager.remove(movie)
        
    }
    static func searchAllMovies() -> [Movie] {
        
        var result = [Movie]()
        
        let request : NSFetchRequest<Movie> = Movie.fetchRequest()
        
        request.sortDescriptors = [
            NSSortDescriptor(key: "tittle", ascending: true)
        ]
        
        
        do{
            try result = CoreDataManager.getContext().fetch(request)
        } catch let error {
            print ("Nao foi possivel achar os filmes: \(error)")
        }
        
        return result
        
    }
}
