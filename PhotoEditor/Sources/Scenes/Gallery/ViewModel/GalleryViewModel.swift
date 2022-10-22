//
//  GalleryViewModel.swift
//  PhotoEditor
//
//  Created by Михаил Багмет on 19.10.2022.
//

import Foundation

class GalleryViewModel {
    
    // MARK: - Binding properties
    
    let itemsPerRow = Binder(GalleryViewController.Metrics.itemsPerRow)
    let minimumItemSpacing = Binder(GalleryViewController.Metrics.minimumItemSpacing)
}
