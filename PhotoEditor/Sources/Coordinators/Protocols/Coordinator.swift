//
//  Coordinator.swift
//  PhotoEditor
//
//  Created by Михаил Багмет on 18.10.2022.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get }
    
    func start()
    func coordinate(to coordinator: Coordinator)
}

extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}
