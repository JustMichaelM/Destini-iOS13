//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    private let stories: [Story]
    private(set) var currentStoryIndex: Int = 0
    
    init(stories: [Story]) {
        self.stories = stories
    }
    
    var currentStory: Story {
        stories[currentStoryIndex]
    }
    var isCompleted: Bool {
        if currentStoryIndex + 1 == stories.count {
            return true
        }
        return false
    }
    
    mutating func advanceToNextStory(choice: String) {
        if currentStoryIndex + 1 < stories.count{
            currentStoryIndex += 1
        }
    }
}
