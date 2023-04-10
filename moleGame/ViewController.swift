//
//  ViewController.swift
//  moleGame
//
//  Created by Sevda Abbasi on 10.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mole1: UIImageView!
    @IBOutlet weak var mole2: UIImageView!
    @IBOutlet weak var mole3: UIImageView!
    @IBOutlet weak var mole4: UIImageView!
    @IBOutlet weak var mole5: UIImageView!
    @IBOutlet weak var mole6: UIImageView!
    @IBOutlet weak var mole7: UIImageView!
    @IBOutlet weak var mole8: UIImageView!
    @IBOutlet weak var mole9: UIImageView!
    @IBOutlet weak var mole10: UIImageView!
    @IBOutlet weak var mole11: UIImageView!
    @IBOutlet weak var mole12: UIImageView!
    @IBOutlet weak var toprak1: UIImageView!
    @IBOutlet weak var toprak2: UIImageView!
    @IBOutlet weak var toprak3: UIImageView!
    @IBOutlet weak var toprak4: UIImageView!
    @IBOutlet weak var toprak5: UIImageView!
    @IBOutlet weak var toprak6: UIImageView!
    @IBOutlet weak var toprak7: UIImageView!
    @IBOutlet weak var toprak8: UIImageView!
    @IBOutlet weak var toprak9: UIImageView!
    @IBOutlet weak var toprak10: UIImageView!
    @IBOutlet weak var toprak11: UIImageView!
    @IBOutlet weak var toprak12: UIImageView!

    @IBOutlet weak var anaResim: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
   
    
    var score = 0
    var counter = 0
    var timer = Timer()
    var hideTimer = Timer()
    var moleArray = [UIImageView]()
    var highScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(score)"
        
        
        
        let storedHighScore = UserDefaults.standard.object(forKey: "highscore")
        if storedHighScore == nil {
            highScore = 0
            highScoreLabel.text = "HighScore: \(highScore)"
            
        }
        if let newScore = storedHighScore as? Int{
            highScore = newScore
            highScoreLabel.text = "HighScore: \(highScore)"
        }
        
        
        
        
        
        
      
        
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer12 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        mole1.addGestureRecognizer(recognizer1)
        mole2.addGestureRecognizer(recognizer2)
        mole3.addGestureRecognizer(recognizer3)
        mole4.addGestureRecognizer(recognizer4)
        mole5.addGestureRecognizer(recognizer5)
        mole6.addGestureRecognizer(recognizer6)
        mole7.addGestureRecognizer(recognizer7)
        mole8.addGestureRecognizer(recognizer8)
        mole9.addGestureRecognizer(recognizer9)
        mole10.addGestureRecognizer(recognizer10)
        mole11.addGestureRecognizer(recognizer11)
        mole12.addGestureRecognizer(recognizer12)
        
        mole1.isUserInteractionEnabled = true
        mole2.isUserInteractionEnabled = true
        mole3.isUserInteractionEnabled = true
        mole4.isUserInteractionEnabled = true
        mole5.isUserInteractionEnabled = true
        mole6.isUserInteractionEnabled = true
        mole7.isUserInteractionEnabled = true
        mole8.isUserInteractionEnabled = true
        mole9.isUserInteractionEnabled = true
        mole10.isUserInteractionEnabled = true
        mole11.isUserInteractionEnabled = true
        mole12.isUserInteractionEnabled = true
        
        moleArray = [mole1,mole2,mole3, mole4, mole5, mole6, mole7, mole8, mole9, mole10, mole11, mole12]
        
        
        
        if let newScore = storedHighScore as? Int {
            highScore = newScore
            highScoreLabel.text = "HighScore: \(highScore)"
        }
        
        //Timers
        
        counter = 20
        timeLabel.text = "\(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideMole), userInfo: nil, repeats: true)
        
        
        
        
        
       hideMole()
        

    }
   @objc func hideMole ()
    {
        for mole in moleArray {
            mole.isHidden = true
        }
        
       let random = Int(arc4random_uniform(UInt32(moleArray.count)))
        moleArray[random].isHidden = false
    }
    
    
    @objc func countDown() {
        counter -= 1
        timeLabel.text = "\(counter)"
        
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            
            
            if self.score > self.highScore {
                self.highScore = self.score
                highScoreLabel.text = "highScore:  \(self.highScore)"
                UserDefaults.standard.set(self.highScore, forKey: "highScore")
                
            }
            
            
            // Alert(uyanı mesajı)
            let alert = UIAlertController(title: "Time's Up", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
            let replayButton = UIAlertAction(title: "Restart", style: UIAlertAction.Style.default) { UIAlertAction in
                //replay function
                
                self.score = 0
                self.scoreLabel.text = "Score: \(self.score)"
                self.counter = 20
                self.timeLabel.text = "\(self.counter)"
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector:#selector(self.hideMole) , userInfo: nil, repeats: true)
               

                
            }
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true)
        }
    }
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"

    }


}

