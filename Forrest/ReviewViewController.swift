//
//  ReviewViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 14..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController
{
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar set */
        self.tabBarController?.navigationItem.title = "리뷰"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.tabBarController?.navigationController!.navigationBar.barTintColor = real_back_color
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        
        /* tab bar set */
        self.tabBarController?.tabBar.barTintColor = real_back_color
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
