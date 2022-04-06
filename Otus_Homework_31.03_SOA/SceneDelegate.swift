//
//  SceneDelegate.swift
//  Otus_Homework_31.03_SOA
//
//  Created by developer on 31.03.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        Configurator.shared.setup()
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.windowScene = scene
        window.rootViewController = AnimeListViewController()
        window.makeKeyAndVisible()
        self.window = window
    }

}

