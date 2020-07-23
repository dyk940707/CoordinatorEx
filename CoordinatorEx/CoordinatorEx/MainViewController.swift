//
//  MainViewController.swift
//  CoordinatorEx
//
//  Created by FIT on 2020/07/23.
//  Copyright © 2020 com.dy. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {
    
    var coordinator: MainCoordinator?
    var data: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func goFirstButton(_ sender: UIButton) {
        coordinator?.goFirst(data: data)
    }
    @IBAction func goSecondButton(_ sender: UIButton) {
        coordinator?.goSecond()
    }
    
}
