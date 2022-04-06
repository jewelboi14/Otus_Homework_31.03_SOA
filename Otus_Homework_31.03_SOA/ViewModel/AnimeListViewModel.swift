//
//  AnimeListViewModel.swift
//  Otus_Homework_31.03_SOA
//
//  Created by developer on 06.04.2022.
//

import Foundation

final class AnimeListViewModel {
    
    var animeList = [Anime]()
    
    func getAnimeList(completion: @escaping () -> Void) {
        let networkSerivice = Configurator.shared.serviceLocator.getService(type: NetworkingService.self)
        let realmService = Configurator.shared.serviceLocator.getService(type: RealmService.self)
        networkSerivice?.fetch { animes in
            if let animes = animes {
                for anime in animes {
                    self.animeList.append(Anime(name: anime.anime_name ?? ""))
                    realmService?.write(data: AnimeLocal.create(withName: anime.anime_name ?? ""))
                }
            } else {
                if let localAnimes = realmService?.read() {
                    for anime in localAnimes {
                        self.animeList.append(Anime(name: anime.name))
                    }
                }
                
            }
            completion()
        }
        
    }
}
