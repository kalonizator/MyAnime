//
//  CustomCell.swift
//  MyAnime
//
//  Created by kalonizator on 29.06.17.
//  Copyright © 2017 kalonizator. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var popUpView1: UIView!
    
    @IBOutlet weak var popUpView2: UIView!
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var infoButton: UIButton!
    
    @IBOutlet weak var thirdLabel: UILabel!
    
    @IBOutlet weak var fourthLabel: UILabel!
    
    @IBOutlet weak var hideBut: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        hideBut.layer.cornerRadius = 7
        hideBut.layer.borderWidth = 1
        hideBut.layer.borderColor = UIColor.white.cgColor
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBAction func infoButtonPressed(_ sender: UIButton) {
        UIView.transition(with: popUpView2, duration: 0.5, options: .transitionFlipFromRight, animations: {
            self.popUpView2.alpha = 1
        }, completion: nil)
    }
    
    
    @IBAction func hideButton(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.5, animations: {
//                self.popUpView1.frame.origin.x += self.view.bounds.width

            self.popUpView1.alpha = 1
//            self.popUpView2.frame.origin.x = self.frame.width
            self.popUpView2.frame.origin.x += self.superview!.frame.width
            self.popUpView2.alpha = 0
        }, completion: {(action) in
            self.popUpView2.frame.origin.x = 0
        })
    }
}
