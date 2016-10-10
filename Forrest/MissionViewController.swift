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
   
    @IBAction func toMisson(sender: AnyObject)
    {
        let img = UIImage(named: "toMission")
        Image.image = img
        bt_nuMission.setImage(UIImage(named: "bt_nuBlack"), forState: .Normal)
        bt_nuMission.tintColor = UIColor.blackColor()
        bt_toMission.setImage(UIImage(named: "bt_toGreen"),forState: .Normal)
        bt_toMission.tintColor = background_color_state
    }
    @IBAction func nuMisson(sender: AnyObject)
    {
        let img = UIImage(named: "nuMisson")
        Image.image = img
        
        bt_toMission.setImage(UIImage(named: "bt_toBlack"), forState: .Normal)
        bt_toMission.tintColor = UIColor.blackColor()
        bt_nuMission.setImage(UIImage(named: "bt_nuGreen"), forState: .Normal)
        bt_nuMission.tintColor = background_color_state
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
        
        let img = UIImage(named: "toMission")
        Image.image = img
        bt_toMission.setImage(UIImage(named: "bt_toGreen"),forState: .Normal)
        bt_toMission.tintColor = background_color_state
        bt_nuMission.setImage(UIImage(named: "bt_nuBlack"), forState: .Normal)
        bt_nuMission.tintColor = real_back_color
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
