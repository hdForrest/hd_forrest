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
    
    /* 사라질 때 navigation bar 숨기기 */
    override func viewWillDisappear(animated:Bool)
    {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBarHidden = true
    }
    
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar set */
        self.tabBarController?.navigationItem.title = "초급 주행"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        self.tabBarController?.navigationController!.navigationBar.barTintColor = UIColor.blackColor()
        
        self.tabBarController?.navigationController!.navigationBar.tintColor = UIColor(red: CGFloat(100/225.0), green: CGFloat(250/255.0), blue: CGFloat(194/255.0), alpha: CGFloat(1.0))
        
        
        /* tab bar set */
        UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: 25)!], forState: .Normal)
        
        UITabBarItem.appearance().titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -7)
        
        self.tabBarController?.tabBar.backgroundColor = UIColor(red: CGFloat(54/225.0), green: CGFloat(54/255.0), blue: CGFloat(54/255.0), alpha: CGFloat(1.0))
        self.tabBarController?.tabBar.tintColor = UIColor(red: CGFloat(100/225.0), green: CGFloat(250/255.0), blue: CGFloat(194/255.0), alpha: CGFloat(1.0))
    }
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //imageView = UIImageView(image: UIImage(named: "beginnerMap"))
        
        
        //ScrollView = UIScrollView(frame: view.bounds)
        //ScrollView.contentSize = imageView.bounds.size
        //ScrollView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        //ScrollView.addSubview(imageView)
        //view.addSubview(ScrollView)
        
        //self.ScrollView.addSubview()
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
