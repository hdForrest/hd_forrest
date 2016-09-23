//
//  StartViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 9. 23..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class StartViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // 첫화면 네비게이션 바 숨기기.
        self.navigationController?.navigationBarHidden = true
    }

    // 화면 사라질 때 네비게이션 바 나타나기.
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
