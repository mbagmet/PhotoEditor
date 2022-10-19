//
//  AppCoordinator.swift
//  PhotoEditor
//
//  Created by Михаил Багмет on 18.10.2022.
//

import UIKit

class AppCoordinator: Coordinator {
    
    // MARK: - Properties
    
    var navigationController: UINavigationController
    
    // MARK: - Initializers
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Methods
    
    func start() {
        let editorCoordinator = EditorCoordinator(navigationController: navigationController)
        coordinate(to: editorCoordinator)
    }
}
