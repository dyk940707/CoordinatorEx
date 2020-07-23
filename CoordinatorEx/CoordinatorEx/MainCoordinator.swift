//
//  MainCoordinator.swift
//  CoordinatorEx
//
//  Created by FIT on 2020/07/23.
//  Copyright © 2020 com.dy. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = MainViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goFirst(data: Int) {
        let vc = FirstViewController.instantiate()
        vc.coordinator = self
        vc.data2 = data
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goSecond() {
        let vc = SecondViewController.instantiate()
        vc.coordinator = self
        navigationController.present(vc, animated: true, completion: nil)
    }
    
    
    
    
}
