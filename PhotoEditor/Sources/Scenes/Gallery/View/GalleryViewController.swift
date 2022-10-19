//
//  GalleryViewController.swift
//  PhotoEditor
//
//  Created by Михаил Багмет on 19.10.2022.
//

import UIKit

class GalleryViewController: UIViewController {
    
    // MARK: - Properties
    
    weak var coordinator: GalleryFlow?
    var viewModel: GalleryViewModel?
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemYellow
    }
}
