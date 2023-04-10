//
//  ViewController.swift
//  moleGame
//
//  Created by Sevda Abbasi on 10.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var anaResim: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
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
    
    
    
    var score = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Score: \(score)"
        
        
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

    }
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"

    }


}

