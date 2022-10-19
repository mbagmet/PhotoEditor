//
//  EditorCoordinator.swift
//  PhotoEditor
//
//  Created by Михаил Багмет on 19.10.2022.
//

import UIKit

class EditorCoordinator: Coordinator, EditorFlow {
    
    // MARK: - Properties
    
    var navigationController: UINavigationController
    
    // MARK: - Initializers
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Methods
    
    func start() {
        let editorViewController = EditorViewController()
        let viewModel = EditorViewModel()
        
        editorViewController.coordinator = self
        editorViewController.viewModel = viewModel
        
        navigationController.pushViewController(editorViewController, animated: true)
    }
    
    func dismissEditor() {
        navigationController.dismiss(animated: true)
    }
}
