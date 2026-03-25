//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    @IBOutlet weak var storyBackground: UIImageView!
    
    private var storyBrain: StoryBrain!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Lubie Placki!")
        storyBrain = StoryBrain(stories: StoryData.allStories)
        updateUi()
    }
    @IBAction func choicePicked(_ sender: UIButton) {
        if storyBrain.isCompleted {
            endStory()
            return 
        }
        
        if let choice = sender.currentTitle {
            storyBrain.advanceToNextStory(choice: choice)
            updateUi()
        }
    }
    
    func updateUi() {
        storyLabel.text = storyBrain.currentStory.text
        storyBackground.image = storyBrain.currentStory.image
        choice1Button.setTitle(storyBrain.currentStory.choice1, for: .normal)
        choice2Button.setTitle(storyBrain.currentStory.choice2, for: .normal)
    }
    
    func endStory() {
        storyLabel.text = "KONIEC!"
        choice1Button.isHidden = true
        choice1Button.isEnabled = false
        choice2Button.isHidden = true
        choice1Button.isEnabled = false
    }

}

