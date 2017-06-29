//
//  CustomCell.swift
//  MyAnime
//
//  Created by kalonizator on 29.06.17.
//  Copyright © 2017 kalonizator. All rights reserved.
//

import UIKit

class Tables: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var phones_name = ["iPhone 7 Plus",
                       "Samsung Galaxy S8",
                       "LG G4",
                       "Nexus 6P",
                       "HTC One M9",
                       "Google Pixel"
    ]
    
    var phones_price = ["350$",
                        "500$",
                        "400$",
                        "700$",
                        "500$",
                        "650$"
    ]
    
    var phones_fInfo = ["A10 Fusion",
                        "Snapdragon 835",
                        "Snapdragon 808",
                        "Snapdragon 810",
                        "Snapdragon 810",
                        "Snapdragon 821",
                        ]
    
    var phones_sInfo = ["12MPX",
                        "12MPX",
                        "16MPX",
                        "12.3MPX",
                        "20MPX",
                        "12MPX",]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phones_name.count
    }
    
    var timeCounter = 1.0
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 17.0)
        
        
        
        
        cell.firstLabel.text = self.phones_name[indexPath.row]
        cell.secondLabel.text = self.phones_price[indexPath.row]
        cell.thirdLabel.text = self.phones_fInfo[indexPath.row]
        cell.fourthLabel.text = self.phones_sInfo[indexPath.row]
        
        return cell
        
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 55;//Choose your custom row height
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        
        
        UIView.animate(withDuration: timeCounter, delay: 0.7, animations: {
            cell.layer.transform = CATransform3DTranslate(CATransform3DIdentity, self.view.frame.width, 0, 0)
        })
        timeCounter = timeCounter + 0.1
    }
}









/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */

