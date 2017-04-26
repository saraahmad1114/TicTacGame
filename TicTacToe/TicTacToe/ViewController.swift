//
//  ViewController.swift
//  TicTacToe
//
//  Created by Flatiron School on 4/25/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstPlayer = 1
    var gamePlace = [0, 0, 0, 0, 0, 0, 0, 0, 0]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func actionButton(_ sender: UIButton) {
        
        if self.gamePlace[sender.tag-1] == 0{
            
            self.gamePlace[sender.tag-1] = self.firstPlayer
        
            if self.firstPlayer == 1 {
                sender.setImage(UIImage(named: "Cross.png"), for: UIControlState())
                firstPlayer = 2
            }
            else{
            sender.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            firstPlayer = 1
            }
        }
    }
   

}

