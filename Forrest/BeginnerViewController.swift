//
//  BeginnerViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 9. 25..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class BeginnerViewController: UIViewController
{
    /* navigation bar set */
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        self.tabBarController?.navigationItem.title = "초급 주행"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red: CGFloat(255/225.0), green: CGFloat(255/255.0), blue: CGFloat(255/255.0), alpha: CGFloat(1.0))]
        
        self.tabBarController?.navigationController!.navigationBar.tintColor = UIColor(red: CGFloat(100/225.0), green: CGFloat(250/255.0), blue: CGFloat(194/255.0), alpha: CGFloat(1.0))
        
        self.tabBarController?.navigationController!.navigationBar.barTintColor = UIColor(red: CGFloat(30/225.0), green: CGFloat(30/255.0), blue: CGFloat(30/255.0), alpha: CGFloat(1.0))
        
        
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
    
    /* 사라질 때 숨기기 */
    override func viewWillDisappear(animated:Bool)
    {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBarHidden = true
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
