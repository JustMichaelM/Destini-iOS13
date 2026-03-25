//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct Story {
    let text: String
    let image: UIImage
    let choice1: String
    let choice2: String
    
    init(text: String, image: UIImage? = nil, choice1: String, choice2: String) {
        self.text = text
        self.image = image ?? UIImage(named: "background")!
        self.choice1 = choice1
        self.choice2 = choice2
    }
}
