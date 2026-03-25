//
//  StoryData.swift
//  Destini-iOS13
//
//  Created by Michał on 25/03/2026.
//  Copyright © 2026 The App Brewery. All rights reserved.
//
import Foundation
import UIKit

enum StoryData {
    private static let stories: [Story] = [
        Story(text: "Blabla", image: UIImage(named: "background"),choice1: "A", choice2: "B")
    ]
    
    static var allStories: [Story] {
        stories
    }
}

