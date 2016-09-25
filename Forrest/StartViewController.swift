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

var text_size = 0;

class StartViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        /* 첫화면 네비게이션 바 숨기기. */
        self.navigationController?.navigationBarHidden = true
        /* tab bar 숨기기 */
        self.tabBarController?.tabBar.hidden = true
        
        /* 첫화면 배경 색상 설정 */
        self.view.backgroundColor = UIColor(red: CGFloat(92/225.0), green: CGFloat(251/255.0), blue: CGFloat(193/255.0), alpha: CGFloat(1.0))
        
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
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
