//
//  Coordinator.swift
//  DarayoStore
//
//  Created by FIT on 2020/07/23.
//  Copyright © 2020 jyp. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
