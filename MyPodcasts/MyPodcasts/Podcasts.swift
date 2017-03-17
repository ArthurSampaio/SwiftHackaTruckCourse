//
//  Podcasts.swift
//  MyPodcasts
//
//  Created by Student on 3/16/17.
//  Copyright © 2017 Arthur Sampaio. All rights reserved.
//

import Foundation


class Podcasts{
    
    let name:String
    let picture : String
    let description : String
    
    init(name: String, picture: String, description : String) {
        
        self.name = name
        self.picture = picture
        self.description = description
        
    }
    
}



class PodcastDAO {
    
    static func getPodcasts() -> [Podcasts] {
        
        return [
            
            Podcasts(name: "99Vidas", picture: "99vidas", description: "Podcast bacana"),
            Podcasts(name: "cana42", picture: "canal42", description: "Podcast bacana"),
            Podcasts(name: "mm", picture: "mm", description: "Podcast bacana"),
            Podcasts(name: "NerdCast", picture: "nerdcast", description: "Podcast bacana"),
            Podcasts(name: "RapaduraCast", picture: "rapaduracast", description: "Podcast bacana"),
            Podcasts(name: "SciCast", picture: "scicast", description: "Podcast bacana"),
            Podcasts(name: "Reloading", picture: "reloading", description: "Podcast bacana"),
            Podcasts(name: "NaoOuvo", picture: "naoouvo", description: "Podcast bacana"),
            Podcasts(name: "OMPDB", picture: "ompdbs", description: "Podcast bacana")
            
        ]
        
    }
}
