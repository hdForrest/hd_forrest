//
//  StartViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 9. 23..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

/* 글자, 배경 색 설정 */
var background_color_state = 0;
var text_color_state = 0;
/* 글자 크기 설정 */
var text_size = 0;

class StartViewController: UIViewController
{
    @IBOutlet weak var bt_travel: UIButton!
    @IBOutlet weak var bt_mission: UIButton!
    @IBOutlet weak var bt_walk: UIButton!
    @IBOutlet weak var bt_call: UIButton!
    @IBOutlet weak var bt_setting: UIButton!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        /* 첫화면 네비게이션 바 숨기기. */
        self.navigationController?.navigationBarHidden = true
        /* tab bar 숨기기 */
        self.tabBarController?.tabBar.hidden = true
        
        /* 첫화면 배경 색상 설정 */
        self.view.backgroundColor = UIColor(red: CGFloat(100/225.0), green: CGFloat(250/255.0), blue: CGFloat(194/255.0), alpha: CGFloat(1.0))
        
        /* 버튼에 이미지 입히기 */
        bt_travel.setImage(UIImage(named: "Travel"), forState: .Normal)
        bt_mission.setImage(UIImage(named : "Mission"), forState: .Normal)
        bt_walk.setImage(UIImage(named : "Walk"), forState: .Normal)
        bt_setting.setImage(UIImage(named : "Setting"), forState: .Normal)
        
        
        bt_travel.tintColor = UIColor.blackColor()
        bt_mission.tintColor = UIColor.blackColor()
        bt_walk.tintColor = UIColor.blackColor()
        bt_setting.tintColor = UIColor.blackColor()
        //bt_travel.setTitleColor(UIColor(red: CGFloat(100/225.0), green: CGFloat(250/255.0), blue: CGFloat(194/255.0), alpha: CGFloat(1.0)), forState: .Normal)
        
    }
    
    /* 화면 사라질 때 네비게이션 바 나타나기. */
    override func viewWillDisappear(animated:Bool)
    {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBarHidden = false
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if(segue.identifier=="mission")
        {
            let tabVC = segue.destinationViewController as! MissonTabbarController
            tabVC.selectedIndex = 2
        }
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
