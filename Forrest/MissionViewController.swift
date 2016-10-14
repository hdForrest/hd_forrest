//
//  MissionViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 9. 25..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class MissionViewController: UIViewController
{
  
    @IBOutlet weak var bt_toMission: UIButton!
    
    @IBOutlet weak var bt_nuMission: UIButton!
    @IBOutlet weak var Image: UIImageView!
   
    @IBOutlet weak var toMissionLabel1: UILabel!
    
    @IBOutlet weak var toMissionLabel2: UILabel!
    @IBOutlet weak var toMissionLabel3: UILabel!
    @IBOutlet weak var toMissionLabel4: UILabel!
    @IBOutlet weak var nuMissionLabel1: UILabel!
   
    @IBOutlet weak var nuMissionLabel2: UILabel!
    @IBOutlet weak var nuMissionLabel3: UILabel!
    @IBOutlet weak var nuMissionLabel4: UILabel!
    
    
    
    
    @IBAction func toMission(sender: AnyObject) {
        let img = UIImage(named: "tomission1")
        Image.image = img
        
        bt_nuMission.setImage(UIImage(named: "bt_nuBlack"), forState: .Normal)
        bt_nuMission.tintColor = UIColor.blackColor()
        bt_toMission.setImage(UIImage(named: "bt_toGreen"),forState: .Normal)
        bt_toMission.tintColor = background_color_state
    
        toMissionLabel1.hidden = false
        toMissionLabel2.hidden = false
        toMissionLabel3.hidden = false
        toMissionLabel4.hidden = false
             nuMissionLabel1.hidden = true
        nuMissionLabel2.hidden = true
        nuMissionLabel3.hidden = true
        nuMissionLabel4.hidden = true
    }
    @IBAction func nuMission(sender: AnyObject) {
        let img = UIImage(named: "numission1")
        Image.image = img
        
        bt_toMission.setImage(UIImage(named: "bt_toBlack"), forState: .Normal)
        bt_toMission.tintColor = UIColor.blackColor()
        bt_nuMission.setImage(UIImage(named: "bt_nuGreen"),forState: .Normal)
        bt_nuMission.tintColor = background_color_state
        nuMissionLabel1.hidden = false
        nuMissionLabel2.hidden = false
        nuMissionLabel3.hidden = false
        nuMissionLabel4.hidden = false
        toMissionLabel1.hidden = true
        toMissionLabel2.hidden = true
        toMissionLabel3.hidden = true
        toMissionLabel4.hidden = true
          }



    override func viewWillAppear(animated:Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation 바 숨기기 */
        self.navigationController?.navigationBarHidden = true
        /* tab bar set */
        self.tabBarController?.tabBar.backgroundColor = real_back_color
        self.tabBarController?.tabBar.tintColor = background_color_state
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        /*디폴트 설정*/
        self.view.backgroundColor = real_back_color
        
        let img = UIImage(named: "tomission1")
        Image.image = img
        bt_toMission.setImage(UIImage(named: "bt_toGreen"),forState: .Normal)
        bt_toMission.tintColor = background_color_state
        bt_nuMission.setImage(UIImage(named: "bt_nuBlack"), forState: .Normal)
        bt_nuMission.tintColor = real_back_color
        toMissionLabel1.textColor = UIColor.whiteColor()
        toMissionLabel2.textColor =  background_color_state
        toMissionLabel3.textColor =  background_color_state
        toMissionLabel4.textColor =  background_color_state
        
        
        nuMissionLabel1.textColor = UIColor.whiteColor()
        nuMissionLabel2.textColor = background_color_state
        nuMissionLabel3.textColor = background_color_state
        nuMissionLabel4.textColor = background_color_state
        nuMissionLabel1.hidden = true
        nuMissionLabel2.hidden = true
        nuMissionLabel3.hidden = true
        nuMissionLabel4.hidden = true
        Image.backgroundColor = background_color_state

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
