//
//  PhotoCollectionViewCell.swift
//  PhotoEditor
//
//  Created by Михаил Багмет on 22.10.2022.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell"
    
    // MARK: - Views

    lazy var thumbnailImage: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.tintColor = .secondarySystemBackground
        
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        return imageView
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupHierarchy()
        setupLayout()
        setBackground()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Settings

    func setupHierarchy() {
        addSubview(thumbnailImage)
    }

    func setupLayout() {
        thumbnailImage.translatesAutoresizingMaskIntoConstraints = false
        thumbnailImage.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        thumbnailImage.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        thumbnailImage.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        thumbnailImage.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

    // MARK: - Configuration

    func setBackground() {
        thumbnailImage.image = UIImage(named: "0004")
    }
//    public func configureCell(with model: AlbumsItemModel) {
////        if let albumPicture = model.albumPicture {
////            albumImage.image = UIImage(named: albumPicture)
////            thumbnailImage.contentMode = .scaleAspectFill
////        }
//    }
}

// MARK: - Constants

extension PhotoCollectionViewCell {
    enum Metric {
        static let albumTitleFontSize: CGFloat = 16
        static let photosQtyFontSize: CGFloat = 15
        static let noImageIconSize: CGFloat = 60

        static let imageCornerRadius: CGFloat = 5
        static let imageRatio: CGFloat = 1.0
        static let parentStackViewPaddings: CGFloat = 0
    }
}
