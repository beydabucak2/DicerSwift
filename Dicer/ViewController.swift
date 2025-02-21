import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImages = [
        UIImage(named: "dices/1"),
        UIImage(named: "dices/2"),
        UIImage(named: "dices/3"),
        UIImage(named: "dices/4"),
        UIImage(named: "dices/5"),
        UIImage(named: "dices/6")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        self.view.layer.borderWidth = 15.0
        self.view.layer.borderColor = UIColor.black.cgColor
        self.view.layer.cornerRadius = 50.0
        self.view.layer.masksToBounds = true
        self.view.backgroundColor = UIColor(red: 0.67, green: 0.2, blue: 0.3, alpha: 1.0)
        diceImageView1.image = diceImages[0]
        diceImageView2.image = diceImages[0]
    }
    
    @IBAction func rollDice(_ sender: UIButton) {
       
        let rollDuration = 1.0
        let randomDiceIndex1 = Int.random(in: 0..<diceImages.count)
        let randomDiceIndex2 = Int.random(in: 0..<diceImages.count)
        
      
        var count = 0
        let totalCount = 20
        
       
        Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { timer in
            let randomIndex1 = Int.random(in: 0..<self.diceImages.count)
            let randomIndex2 = Int.random(in: 0..<self.diceImages.count)
            
            self.diceImageView1.image = self.diceImages[randomIndex1]
            self.diceImageView2.image = self.diceImages[randomIndex2]
            
            count += 1
            if count >= totalCount {
                timer.invalidate()
                
              
                self.diceImageView1.image = self.diceImages[randomDiceIndex1]
                self.diceImageView2.image = self.diceImages[randomDiceIndex2]
            }
        }
    }
}
