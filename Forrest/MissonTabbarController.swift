//
//  TabbarController.swift
//  BlindNews
//
//  Created by 시선 on 2016. 5. 9..
//  Copyright © 2016년 시선. All rights reserved.
//

import UIKit

class MissonTabbarController: UITabBarController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let backItem = UIBarButtonItem()
        backItem.title = "   "
        navigationItem.backBarButtonItem = backItem
        
        // [Maybe you don't have a navigation controller] yNavBar indicates the height of the navigation bar.
               // yStatusBar indicates the height of the status bar
        // Set the size and the position in the screen of the tab bar
       
       
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
