//
//  GalleryCoordinator.swift
//  PhotoEditor
//
//  Created by Михаил Багмет on 19.10.2022.
//

import UIKit

class GalleryCoordinator: Coordinator, GalleryFlow {
    
    // MARK: - Properties
    
    var navigationController: UINavigationController
    
    // MARK: - Initializers
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Methods
    
    func start() {
        let galleryViewController = GalleryViewController()
        let viewModel = GalleryViewModel()
        
        galleryViewController.coordinator = self
        galleryViewController.viewModel = viewModel
        
        navigationController.pushViewController(galleryViewController, animated: true)
    }
    
    func coordinateToEditor() {
        let editorCoordinator = EditorCoordinator(navigationController: navigationController)
        coordinate(to: editorCoordinator)
    }
}
