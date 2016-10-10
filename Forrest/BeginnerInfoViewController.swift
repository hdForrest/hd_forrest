//
//  BeginnerInfoViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 10..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class BeginnerInfoViewController: UIViewController
{
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar text set */
        self.navigationItem.title = "코스 설명"
        self.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.navigationController!.navigationBar.barTintColor = real_back_color
        self.navigationController!.navigationBar.tintColor = background_color_state
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
