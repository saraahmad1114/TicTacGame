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
    
    var neededCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    var gameInSession = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func actionButton(_ sender: UIButton) {
        
        if self.gamePlace[sender.tag-1] == 0 && self.gameInSession == true{
            
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
        
        for singleCombination in self.neededCombinations{
            
            if self.gamePlace[singleCombination[0]] != 0 && self.gamePlace[singleCombination[0]] == self.gamePlace[singleCombination[1]] && self.gamePlace[singleCombination[1]] == self.gamePlace[singleCombination[2]]{
                
                self.gameInSession = false
                
                if self.gamePlace[singleCombination[0]] == 1{
                    //cross has won!!
                    print("X HAS WON")
                }
                else{
                    //nought has won!!
                    print("O HAS WON")
                }
            }
        }
    }
   
    

}

