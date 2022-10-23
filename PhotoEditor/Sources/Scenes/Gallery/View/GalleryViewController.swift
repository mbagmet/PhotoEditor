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
    
    private var itemsPerRow: CGFloat?
    private var minimumItemSpacing: CGFloat?
    
    // MARK: - Views
    
    lazy var collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: Bindings
        bindViewModel()
        
        // MARK: View Setup
        setupHierarchy()
        setupView()

        // MARK: CollectionView Setup
        registerCells()
        setupCollectionView()
    }
    
    // MARK: - Settings

    private func setupHierarchy() {
        view.addSubview(collectionView)
    }
    
    private func setupView() {
        view.backgroundColor = .black
    }
    
    private func setupCollectionView() {
        collectionView.backgroundColor = .black
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func registerCells() {
        collectionView.register(PhotoCollectionViewCell.self, forCellWithReuseIdentifier: PhotoCollectionViewCell.identifier)
        collectionView.register(VideoCollectionViewCell.self, forCellWithReuseIdentifier: VideoCollectionViewCell.identifierVideo)
    }
    
    // MARK: - Bindings
    
    private func bindViewModel() {
        viewModel?.itemsPerRow.bind { [weak self] itemsPerRow in
          self?.itemsPerRow = itemsPerRow
        }
        
        viewModel?.minimumItemSpacing.bind { [weak self] minimumItemSpacing in
          self?.minimumItemSpacing = minimumItemSpacing
        }
    }
}

extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = (minimumItemSpacing ?? Metrics.minimumItemSpacing) * ((itemsPerRow ?? Metrics.itemsPerRow) - 1)
        let avaliableWidth = collectionView.bounds.width - paddingSpace
        let widthPerItem = avaliableWidth / (itemsPerRow ?? Metrics.itemsPerRow)

        return CGSize(width: widthPerItem, height: widthPerItem)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return minimumItemSpacing ?? Metrics.minimumItemSpacing
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return minimumItemSpacing ?? Metrics.minimumItemSpacing
    }
}

extension GalleryViewController: UICollectionViewDelegate {
    // TODO
}

extension GalleryViewController: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1 //sections.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 999//sections.count
        //return sections[section].items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionViewCell.identifier, for: indexPath) as! PhotoCollectionViewCell
        
        if indexPath.row % 5 == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: VideoCollectionViewCell.identifierVideo, for: indexPath) as! VideoCollectionViewCell
        }
        
        //cell.backgroundColor = .systemYellow

//        let item = sections[indexPath.item]
//        cell.configureCell(with: item)
        return cell
    }
}
