//
//  WalkViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 9. 25..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class WalkViewController: UIViewController
{
   
    @IBOutlet weak var onl: UIButton!
    @IBOutlet weak var noojuk: UIButton!
    @IBAction func noojuk(sender: AnyObject) {
         image.image = nil
    }
    @IBOutlet weak var image: UIImageView!
    @IBAction func today(sender: AnyObject) {
        let img = UIImage(named: "walktoday")
        image.image = img
        onl.setImage(UIImage(named: "onl"),forState: .Normal)
    }
    override func viewWillAppear(animated:Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation 바 숨기기 */
        self.navigationController?.navigationBarHidden = true
        /* tab bar set */
        self.tabBarController?.tabBar.backgroundColor = UIColor.blackColor()
        self.tabBarController?.tabBar.tintColor = background_color_state
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        noojuk.setImage(UIImage(named: "noojuk"), forState: .Normal)
        noojuk.tintColor = UIColor.blackColor()
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
