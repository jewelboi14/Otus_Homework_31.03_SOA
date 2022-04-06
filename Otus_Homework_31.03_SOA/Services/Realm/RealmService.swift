//
//  RealmService.swift
//  Otus_Homework_31.03_SOA
//
//  Created by developer on 06.04.2022.
//

import Foundation
import RealmSwift

final class RealmService {
    
    func write(data: AnimeLocal) {
        let realm = try! Realm()
        try! realm.write {
            realm.add(data)
        }
    }
    
    func read() -> Results<AnimeLocal> {
        let realm = try! Realm()
        return realm.objects(AnimeLocal.self)
    }
}
