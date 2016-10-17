//
//  WalkViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 9. 25..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class WalkViewController: UIViewController
{
    

    @IBOutlet weak var bt_toWalk: UIButton!
    @IBOutlet weak var bt_nuWalk: UIButton!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var toWalkLabel1: UILabel!
    @IBOutlet weak var toWalkLabel2: UILabel!
    
    @IBOutlet weak var toWalkLabel3: UILabel!
    
    @IBOutlet weak var toWalkLabel4: UILabel!
    @IBOutlet weak var toWalkLabel5: UILabel!
    @IBOutlet weak var toWalkLabel6: UILabel!
    
    @IBOutlet weak var toWalkLabel7: UILabel!
    @IBOutlet weak var nuWalkLabel1: UILabel!
    @IBOutlet weak var nuWalkLabel2: UILabel!
    @IBOutlet weak var nuWalkLabel3: UILabel!
    @IBOutlet weak var nuWalkLabel4: UILabel!
    @IBOutlet weak var nuwalkLabel5: UILabel!
    @IBOutlet weak var nuWalkLabel6: UILabel!
    @IBOutlet weak var nuWalkLabel7: UILabel!
    @IBOutlet weak var nuWalkLabel8: UILabel!
    @IBOutlet weak var nuWalkLabel9: UILabel!
    
    @IBOutlet weak var nuWalkLabel10: UILabel!
    
    @IBOutlet weak var nuWalkLabel11: UILabel!
    @IBOutlet weak var nuWalkLabel12: UILabel!
    
    @IBAction func toWalk(sender: AnyObject)
    {
        let img = UIImage(named: "towalk1")
        Image.image = img
        bt_nuWalk.setImage(UIImage(named: "bt_nuBlack"), forState: .Normal)
        bt_nuWalk.tintColor = UIColor.blackColor()
        bt_nuWalk.backgroundColor = UIColor.whiteColor()
        bt_toWalk.setImage(UIImage(named: "bt_toGreen"), forState: .Normal)
        bt_toWalk.tintColor = background_color_state
        bt_toWalk.backgroundColor =  UIColor.blackColor()
        toWalkLabel1.hidden = false
        toWalkLabel2.hidden = false
        toWalkLabel3.hidden = false
        toWalkLabel4.hidden = false
        toWalkLabel5.hidden = false
        toWalkLabel6.hidden = false
        toWalkLabel7.hidden = false
        nuWalkLabel1.hidden = true
        nuWalkLabel2.hidden = true
        nuWalkLabel3.hidden = true
        nuWalkLabel4.hidden = true
        nuwalkLabel5.hidden = true
        nuWalkLabel6.hidden = true
        nuWalkLabel7.hidden = true
        nuWalkLabel8.hidden = true
        nuWalkLabel9.hidden = true
        nuWalkLabel10.hidden = true
        nuWalkLabel11.hidden = true
        nuWalkLabel12.hidden = true
        
    }
  
   @IBAction func nuWalk(sender: AnyObject)
   {
        let img = UIImage(named: "nuwalk1")
        Image.image = img
        bt_toWalk.setImage(UIImage(named: "bt_toBlack"), forState: .Normal)
        bt_toWalk.tintColor = UIColor.blackColor()
        bt_toWalk.backgroundColor = UIColor.whiteColor()
        bt_nuWalk.setImage(UIImage(named: "bt_nuGreen"), forState: .Normal)
        bt_nuWalk.tintColor = background_color_state
        bt_nuWalk.backgroundColor = UIColor.blackColor()
        toWalkLabel1.hidden = true
        toWalkLabel2.hidden = true
        toWalkLabel3.hidden = true
        toWalkLabel4.hidden = true
        toWalkLabel5.hidden = true
        toWalkLabel6.hidden = true
        toWalkLabel7.hidden = true
        nuWalkLabel1.hidden = false
        nuWalkLabel2.hidden = false
        nuWalkLabel3.hidden = false
        nuWalkLabel4.hidden = false
        nuwalkLabel5.hidden = false
        nuWalkLabel6.hidden = false
        nuWalkLabel7.hidden = false
        nuWalkLabel8.hidden = false
        nuWalkLabel9.hidden = false
        nuWalkLabel10.hidden = false
        nuWalkLabel11.hidden = false
        nuWalkLabel12.hidden = false
    }
   
 
    override func viewWillAppear(animated:Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation 바 숨기기 */
        self.navigationController?.navigationBarHidden = true
        /* tab bar set */
        self.tabBarController?.tabBar.backgroundColor = real_back_color
        self.tabBarController?.tabBar.tintColor = background_color_state
        self.tabBarController!.tabBar.barTintColor = real_back_color
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        /*디폴트 설정*/
        self.view.backgroundColor = real_back_color
        
        let img = UIImage(named: "towalk1")
        Image.image = img
        bt_toWalk.setImage(UIImage(named: "bt_toGreen"), forState: .Normal)
        bt_toWalk.tintColor = background_color_state
        bt_nuWalk.setImage(UIImage(named: "bt_nuBlack"), forState: .Normal)
        bt_nuWalk.tintColor = real_back_color
         bt_nuWalk.backgroundColor = UIColor.whiteColor()
        Image.backgroundColor = background_color_state
        
        toWalkLabel1.textColor = UIColor.whiteColor()
        nuWalkLabel1.textColor = UIColor.whiteColor()
        toWalkLabel2.textColor = background_color_state
        toWalkLabel3.textColor = background_color_state
        toWalkLabel4.textColor = background_color_state
        toWalkLabel5.textColor = background_color_state
        toWalkLabel6.textColor = background_color_state
        toWalkLabel7.textColor = background_color_state
        toWalkLabel1.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 10)
        toWalkLabel2.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 10)
        toWalkLabel3.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 10)
        toWalkLabel4.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 10)
        toWalkLabel5.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 10)
        toWalkLabel6.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 10)
        toWalkLabel7.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 10)
        
        
        nuWalkLabel2.textColor = background_color_state
        nuWalkLabel3.textColor = background_color_state
        nuWalkLabel4.textColor = background_color_state
        nuwalkLabel5.textColor = UIColor.whiteColor()
        nuWalkLabel6.textColor = UIColor.whiteColor()
        nuWalkLabel7.textColor = UIColor.whiteColor()
        nuWalkLabel8.textColor = UIColor.whiteColor()
        
        nuWalkLabel1.hidden = true
        nuWalkLabel2.hidden = true
        nuWalkLabel3.hidden = true
        nuWalkLabel4.hidden = true
        nuwalkLabel5.hidden = true
        nuWalkLabel6.hidden = true
        nuWalkLabel7.hidden = true
        nuWalkLabel8.hidden = true
        nuWalkLabel9.hidden = true
        nuWalkLabel10.hidden = true
        nuWalkLabel11.hidden = true
        nuWalkLabel12.hidden = true
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning()
    {
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
