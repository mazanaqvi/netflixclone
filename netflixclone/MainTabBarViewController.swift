//
//  ViewController.swift
//  netflixclone
//
//  Created by Ali Humza on 10/01/2024.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        let homeNaviController = UINavigationController(rootViewController: HomeViewController())
        let searchNaviController = UINavigationController(rootViewController: SearchViewController())
        let upcomingNaviController = UINavigationController(rootViewController: UpcomingViewController())
        let downloadNaviController = UINavigationController(rootViewController: DownloadedViewController())
        homeNaviController.tabBarItem.image = UIImage(systemName: "house.fill")
        searchNaviController.tabBarItem.image = UIImage(systemName: "magnifyingglass.circle")
        upcomingNaviController.tabBarItem.image = UIImage(systemName: "newspaper.fill")
        
        downloadNaviController.tabBarItem.image = UIImage(systemName: "arrowshape.down.fill")
        homeNaviController.title="Home"
        searchNaviController.title="Search"
        upcomingNaviController.title="Upcoming "
        downloadNaviController.title="Downloaded "
        // Do any additional setup after loading the view.
        setViewControllers([homeNaviController,searchNaviController,upcomingNaviController,downloadNaviController], animated: true)
        tabBar.tintColor = .label
      
    }
    
    
}
