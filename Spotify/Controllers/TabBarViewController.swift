//
//  TabBarViewController.swift
//  Spotify
//
//  Created by Tran Duc Tien on 29/12/2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let home_vc = HomeViewController()
        let search_vc = SearchViewController()
        let lib_vc = LibraryViewController()
        
        home_vc.title = "Home"
        search_vc.title = "Search"
        lib_vc.title = "Library"
        
        home_vc.navigationItem.largeTitleDisplayMode = .always
        search_vc.navigationItem.largeTitleDisplayMode = .always
        lib_vc.navigationItem.largeTitleDisplayMode = .always
        
        let home_nav = UINavigationController(rootViewController: home_vc)
        let search_nav = UINavigationController(rootViewController: search_vc)
        let library_nav = UINavigationController(rootViewController: lib_vc)
        
        home_nav.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        
        search_nav.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        
        library_nav.tabBarItem = UITabBarItem(title: "Library", image: UIImage(systemName: "music.note.list"), tag: 1)
        
        home_nav.navigationBar.prefersLargeTitles = true
        search_nav.navigationBar.prefersLargeTitles = true
        library_nav.navigationBar.prefersLargeTitles = true
        
       setViewControllers([home_nav,search_nav,library_nav], animated: false)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
