//
//  Anime.swift
//  Otus_Homework_31.03_SOA
//
//  Created by developer on 06.04.2022.
//

import Foundation

struct AnimeList: Decodable {
    let data: [AnimeRemote]?
}

struct AnimeRemote: Decodable {
    var anime_name: String?
}
