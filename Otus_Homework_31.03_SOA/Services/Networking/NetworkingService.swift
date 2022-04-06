//
//  NetworkingService.swift
//  Otus_Homework_31.03_SOA
//
//  Created by developer on 06.04.2022.
//

import Foundation
import Alamofire

final class NetworkingService {
    
    func fetch(completion: @escaping ([AnimeRemote]?) -> Void) {
        guard let url = AnimeAPI.getUrl() else { return }
        AF.request(url)
            .validate()
            .responseDecodable(of: AnimeList.self) { (response) in
                guard let anime = response.value else { return }
                completion(anime.data)
            }
    }
}
