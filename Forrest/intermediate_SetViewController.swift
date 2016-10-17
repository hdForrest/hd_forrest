//
//   Free_SetViewController.swift
//  Forrest
//
//  Created by 서기원 on 2016. 10. 17..
//  Copyright © 2016년 이승환. All rights reserved.
//


import UIKit

class intermediate_SetViewController: UIViewController
{
    
    
    
    
    override func viewWillAppear(animated:Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation 바 숨기기 */
        self.navigationController?.navigationBarHidden = true
        /* tab bar set */
        self.tabBarController?.tabBar.backgroundColor = real_back_color
        self.tabBarController?.tabBar.tintColor = background_color_state
        self.tabBarController!.tabBar.barTintColor = real_back_color
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        /*디폴트 설정*/
        self.view.backgroundColor = real_back_color
        
        
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
//
//  intermediate_SetViewController.swift
//  Forrest
//
//  Created by 서기원 on 2016. 10. 17..
//  Copyright © 2016년 이승환. All rights reserved.
//

import Foundation
