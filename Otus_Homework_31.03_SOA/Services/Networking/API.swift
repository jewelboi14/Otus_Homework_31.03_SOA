//
//  API.swift
//  Otus_Homework_31.03_SOA
//
//  Created by developer on 06.04.2022.
//

import Foundation

final class AnimeAPI {
    static func getUrl() -> URL? {
        return URL(string: "https://anime-facts-rest-api.herokuapp.com/api/v1")
    }
}
