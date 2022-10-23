//
//  VideoCollectionViewCell.swift
//  PhotoEditor
//
//  Created by Михаил Багмет on 22.10.2022.
//

import UIKit

class VideoCollectionViewCell: PhotoCollectionViewCell {
    
    static let identifierVideo = "VideoCollectionViewCell"
    
    // MARK: - Views
    
    private lazy var videoDurationTitle: UILabel = {
        let title = UILabel()
        title.textColor = .white
        title.font = .systemFont(ofSize: Metrics.videoDurationTitleFontSize, weight: .medium)
        title.text = "0:35"

        return title
    }()
    
    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Settings
    
    override func setupHierarchy() {
        super.setupHierarchy()

        self.addSubview(videoDurationTitle)
    }

    override func setupLayout() {
        super.setupLayout()

        videoDurationTitle.translatesAutoresizingMaskIntoConstraints = false
        videoDurationTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -6).isActive = true
        videoDurationTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -3).isActive = true
    }
    
    // MARK: - Configuration
    
    override func setBackground() {
        thumbnailImage.image = UIImage(named: "0005")
    }
}

// MARK: - Constants

extension VideoCollectionViewCell {
    enum Metrics {
        static let videoDurationTitleFontSize: CGFloat = 13
    }
}
