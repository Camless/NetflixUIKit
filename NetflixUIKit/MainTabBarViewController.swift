//
//  ViewController.swift
//  NetflixUIKit
//
//  Created by Carlos Morales III on 2/3/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemYellow
		
		let homeVC = UINavigationController(rootViewController: HomeViewController())
		let upcomingVC = UINavigationController(rootViewController: UpcomingViewController())
		let searchVC = UINavigationController(rootViewController: SearchViewController())
		let downloadsVC = UINavigationController(rootViewController: DownloadsViewController())
		
		setViewControllers([homeVC, upcomingVC, searchVC, downloadsVC], animated: true)
	}


}

