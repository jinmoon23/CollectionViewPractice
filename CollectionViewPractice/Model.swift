//
//  Model.swift
//  CollectionViewPractice
//
//  Created by 최진문 on 2024/05/02.
//

import Foundation
import UIKit

class ProfileModel {
    var name: String
    var statusMessage: String
    var bgImage: UIImage
    
    init(name: String, statusMessage: String, bgImage: UIImage) {
        self.name = name
        self.statusMessage = statusMessage
        self.bgImage = bgImage
    }
}
