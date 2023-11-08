//
//  SceneDelegate.swift
//  lifecycle
//  App Lifecycle
//  Created by siberianarg on 08.11.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = ViewController()
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {//5 after 3
        print(#function + "Приложение ВЫКЛЮЧЕНО")
    }

    func sceneDidBecomeActive(_ scene: UIScene) { //2
        print(#function + "FORGRAUND ACTIVE - Активное: становится приложением переднего плана")
    }

    func sceneWillResignActive(_ scene: UIScene) { //3
        print(#function + "INACTIVE - Уходит из режима переднего плана")
    }

    func sceneWillEnterForeground(_ scene: UIScene) { //1
        print(#function + "FORGRAUND INACTIVE приложение передается из фона на передний план")
    }

    func sceneDidEnterBackground(_ scene: UIScene) { //4
        print(#function + "BACKGROUND ~1 sec -> приложение перешло в фоновый режим и может быть выключено в любое время")
    }
}

