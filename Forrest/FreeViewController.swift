//
//  FreeViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 5..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class FreeViewController: UIViewController
{
    @IBOutlet weak var bt_travel_start: UIButton!
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar set */
        self.tabBarController?.navigationItem.title = "자율 주행"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        self.tabBarController?.navigationController!.navigationBar.barTintColor = UIColor.blackColor()
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        
        /* tab bar set */
        self.tabBarController?.tabBar.backgroundColor = UIColor.blackColor()
        self.tabBarController?.tabBar.tintColor = background_color_state
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()

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
