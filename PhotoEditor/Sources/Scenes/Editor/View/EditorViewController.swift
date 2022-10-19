//
//  EditorViewController.swift
//  PhotoEditor
//
//  Created by Михаил Багмет on 18.10.2022.
//

import UIKit

class EditorViewController: UIViewController {
    
    // MARK: - Properties
    
    weak var coordinator: EditorFlow?
    var viewModel: EditorViewModel?
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
    }
}
