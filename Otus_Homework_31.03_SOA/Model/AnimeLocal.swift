//
//  AnimeLocal.swift
//  Otus_Homework_31.03_SOA
//
//  Created by developer on 06.04.2022.
//

import Foundation
import RealmSwift

final class AnimeLocal: Object {
    @objc dynamic var name: String = ""
    
    static func create(withName name: String) -> AnimeLocal {
        let anime = AnimeLocal()
        anime.name = name
        
        return anime
    }
}
