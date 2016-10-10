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
    
    @IBAction func toWalk(sender: AnyObject)
    {
        let img = UIImage(named: "toWalk")
        Image.image = img
        bt_nuWalk.setImage(UIImage(named: "bt_nuBlack"), forState: .Normal)
        //bt_nuWalk.tintColor = UIColor.blackColor()
        bt_toWalk.setImage(UIImage(named: "bt_toGreen"), forState: .Normal)
        //bt_toWalk.tintColor = background_color_state
    }
  
   @IBAction func nuWalk(sender: AnyObject)
   {
        let img = UIImage(named: "nuWalk")
        Image.image = img
        bt_toWalk.setImage(UIImage(named: "bt_toBlack"), forState: .Normal)
        //bt_toWalk.tintColor = UIColor.blackColor()
        bt_nuWalk.setImage(UIImage(named: "bt_nuGreen"), forState: .Normal)
        //bt_nuWalk.tintColor = background_color_state
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
        
        let img = UIImage(named: "toWalk")
        Image.image = img
        bt_toWalk.setImage(UIImage(named: "bt_toGreen"), forState: .Normal)
        bt_toWalk.tintColor = background_color_state
        bt_nuWalk.setImage(UIImage(named: "bt_nuBlack"), forState: .Normal)
        bt_nuWalk.tintColor = real_back_color
        
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
