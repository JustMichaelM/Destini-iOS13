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
        Story(
            text: "Budzi Cię dźwięk budzika. Co robisz?",
            image: UIImage(named: "background"),
            choice1: "Wstaję",
            choice2: "Drzemka"
        ),
        Story(
            text: "Idziesz do kuchni i widzisz śniadanie. Co wybierasz?",
            choice1: "Jajka",
            choice2: "Płatki"
        ),
        Story(
            text: "Spotykasz przyjaciela na ulicy. Co mówisz?",
            choice1: "Cześć!",
            choice2: "Ignoruję go"
        )
    ]
    
    static var allStories: [Story] {
        stories
    }
}

