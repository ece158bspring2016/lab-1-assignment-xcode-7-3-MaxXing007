//
//  ProfileViewController.swift
//  Ratings
//
//  Created by Max X on 4/17/16.
//  Copyright © 2016 Ray Wenderlich. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    var toPass:Int!
    
    @IBOutlet weak var profilePic: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient: CAGradientLayer = CAGradientLayer()
        
        gradient.colors = [UIColor.blueColor().CGColor, UIColor.redColor().CGColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        self.view.layer.insertSublayer(gradient, atIndex: 0)
        
        
        print(toPass)
        
        if(toPass == 0){
            profilePic.image = UIImage(named: "baker")
        }
        
        if(toPass == 1){
            profilePic.image = UIImage(named: "max")
 
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
