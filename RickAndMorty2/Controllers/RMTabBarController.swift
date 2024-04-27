//
//  ViewController.swift
//  RickAndMorty2
//
//  Created by Hari Subedi on 4/27/24.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpTabs()
    }
    
    private func setUpTabs(){
        let characterVC = RMCharacterViewController()
        let episodeVC = RMEpisodeViewController()
        let locationVC = RMLocationViewController()
        let settigngsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        
        characterVC.tabBarItem = UITabBarItem(title: "Character", image: UIImage(systemName: "person"), tag: 1)
        episodeVC.tabBarItem = UITabBarItem(title: "Episode", image: UIImage(systemName: "clock"), tag: 2)
        locationVC.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "globe"), tag: 3)
        settigngsVC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        UITabBar.appearance().tintColor = .systemGreen
        
                
        
        
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: episodeVC)
        let nav3 = UINavigationController(rootViewController: locationVC)
        let nav4 = UINavigationController(rootViewController: settigngsVC)
        
        UINavigationBar.appearance().prefersLargeTitles = true
        UINavigationBar.appearance().tintColor = .systemGreen
        
//        for nav in [nav1, nav2, nav3, nav4]{
//            nav.navigationBar.prefersLargeTitles = true
//        }
        
        self.setViewControllers([nav1, nav2, nav3, nav4], animated: true)
        
        
    }


}

