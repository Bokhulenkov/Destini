
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        показываем начальную историю
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        guard let userChoice = sender.currentTitle else { return }
        storyBrain.nextStory(userChoice)
        updateUI()
    }
    
    
    func updateUI() {
        storyLabel.text = storyBrain.showStory()
        choice1Button.setTitle(storyBrain.showChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.showChoice2(), for: .normal)
        
    }

}

