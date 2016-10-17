//
//  Write_review_ViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 17..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class Write_review_ViewController: UIViewController
{
    @IBOutlet weak var bt_img: UIButton!
    @IBOutlet weak var bt_voice: UIButton!
    @IBOutlet weak var bt_cancel: UIButton!
    @IBOutlet weak var bt_write: UIButton!
    @IBOutlet weak var img_user: UIImageView!
    @IBOutlet weak var text_box: UITextField!

    @IBAction func clicked_img(sender: AnyObject)
    {
        bt_img.setTitleColor(real_back_color, forState: .Normal)
        bt_img.backgroundColor = background_color_state
    }
    
    @IBAction func clicked_cancel(sender: AnyObject)
    {
        bt_cancel.setTitleColor(real_back_color, forState: .Normal)
        bt_cancel.backgroundColor = background_color_state
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func clicked_add(sender: AnyObject)
    {
        bt_write.setTitleColor(real_back_color, forState: .Normal)
        bt_write.backgroundColor = background_color_state
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar text set */
        self.navigationItem.title = "리뷰 쓰기"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.tabBarController?.navigationController!.navigationBar.barTintColor = real_back_color
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        
        /* 주행하기 버튼 설정 */
        bt_img.setTitle("사진 추가", forState: .Normal)
        bt_img.setTitleColor(text_color, forState: .Normal)
        bt_img.backgroundColor = table_color
        bt_img.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        bt_voice.setTitle("음성 추가", forState: .Normal)
        bt_voice.setTitleColor(text_color, forState: .Normal)
        bt_voice.backgroundColor = table_color
        bt_voice.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        bt_cancel.setTitle("취소", forState: .Normal)
        bt_cancel.setTitleColor(text_color, forState: .Normal)
        bt_cancel.backgroundColor = table_color
        bt_cancel.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        bt_write.setTitle("등록", forState: .Normal)
        bt_write.setTitleColor(text_color, forState: .Normal)
        bt_write.backgroundColor = table_color
        bt_write.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        
        text_box.backgroundColor = table_color
        text_box.textColor = text_color
        text_box.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)

    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = real_back_color

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
