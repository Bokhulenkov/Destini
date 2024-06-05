

import Foundation

struct StoryBrain {
    
    var numberOfStorie = 0
    
    let storiesArray = [
        Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
        Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps"),
    ]
    
    mutating func nextStory(_ userChoice: String) {
        let currentStorie = storiesArray[numberOfStorie]
        
        if userChoice == currentStorie.choice1 {
//            проверка на максимальное значение
            numberOfStorie < (storiesArray.count - 1) ? (numberOfStorie += 1) : (numberOfStorie = 0)
        } else if userChoice == currentStorie.choice2 {
            numberOfStorie = Int.random(in: 0..<(storiesArray.count - 1))
        }
    }
    
    func showStory() -> String {
        let currentStorie = storiesArray[numberOfStorie]
        return currentStorie.title
    }
    
    func showChoice1() -> String {
        let currentStorie = storiesArray[numberOfStorie]
        return currentStorie.choice1
    }
    
    func showChoice2() -> String {
        let currentStorie = storiesArray[numberOfStorie]
        return currentStorie.choice2
    }
}
