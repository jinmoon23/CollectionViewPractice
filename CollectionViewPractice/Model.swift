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
    var statueMessage: String
    var bgImage: UIImage
    
    init(name: String, statueMessage: String, bgImage: UIImage) {
        self.name = name
        self.statueMessage = statueMessage
        self.bgImage = bgImage
    }
}
