//
//  ViewController.swift
//  Buttons-PopOver
//
//  Created by Ankit Jaiswal on 13/01/19.
//  Copyright © 2019 Ankit Jaiswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    
    var greenButtonCenter: CGPoint!
    var yellowButtonCenter: CGPoint!
    var redButtonCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        greenButtonCenter = greenButton.center
        redButtonCenter = redButton.center
        yellowButtonCenter = yellowButton.center
        
        setUpInitial()
    }
    
    func setUpInitial() {
        greenButton.alpha = 0
        redButton.alpha = 0
        yellowButton.alpha = 0
        
        greenButton.center = blackButton.center
        redButton.center = blackButton.center
        yellowButton.center = blackButton.center
        
    }
    
    @IBAction func mainButtonAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected {
            UIView.animate(withDuration: 0.3) {
                self.greenButton.center = self.greenButtonCenter
                self.redButton.center = self.redButtonCenter
                self.yellowButton.center = self.yellowButtonCenter
                self.greenButton.alpha = 1
                self.redButton.alpha = 1
                self.yellowButton.alpha = 1
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                self.setUpInitial()
            }
        }
    }
    
}

