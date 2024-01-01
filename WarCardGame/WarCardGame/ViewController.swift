//
//  ViewController.swift
//  WarCardGame
//
//  Created by Zaki Zughbi on 9/23/19.
//  Copyright © 2019 Zaki Zughbi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LeftImageView: UIImageView!
    @IBOutlet weak var RightImageView: UIImageView!
    @IBOutlet weak var LeftPlayerScore: UILabel!
    @IBOutlet weak var RightCPUscore: UILabel!
    
    var rightScore = 0
    var leftScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func DealButton(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        LeftImageView.image = UIImage(named: "card\(rightNumber)")
        
        RightImageView.image = UIImage(named: "card\(leftNumber)")
        
        
//functionality
        if leftNumber > rightNumber{
            leftScore += 1
            LeftPlayerScore.text = String(leftScore)
        }
        else if leftNumber < rightNumber{
            rightScore += 1
            RightCPUscore.text = String(rightScore)
        }
        else{
            print("tie")
        }
    }
    
}

