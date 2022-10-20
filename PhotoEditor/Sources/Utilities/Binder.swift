//
//  Binder.swift
//  PhotoEditor
//
//  Created by Михаил Багмет on 20.10.2022.
//

import Foundation

final class Binder<T> {
    typealias Listener = (T) -> Void
    
    // MARK: - Properties
    
    private var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    // MARK: - Initializers
    
    init(_ value: T) {
        self.value = value
    }
    
    // MARK: - Methods
    
    func bind(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
