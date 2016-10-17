//
//  Free_juhang_ViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 16..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class Free_juhang_ViewController: UIViewController
{
    var num = 1
    var name = " free_road"
    
    @IBOutlet weak var bt_exit: UIButton!
    @IBOutlet weak var bt_viewAll: UIButton!
    @IBOutlet weak var bt_soundIcon: UIButton!
    @IBOutlet weak var img_temp: UIImageView!
    @IBOutlet weak var bt_temp_view: UIButton!
    @IBOutlet weak var time_label: UILabel!
    @IBOutlet weak var arrive_label: UILabel!
    
    @IBOutlet weak var bt_no: UIButton!
    @IBOutlet weak var bt_yes: UIButton!
    @IBOutlet weak var explanation_view: UIImageView!
    
    @IBOutlet weak var big_image: UIImageView!
    @IBOutlet weak var small_image: UIImageView!
    @IBOutlet weak var text_image: UIImageView!
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation 바 숨기기 */
        self.navigationController?.navigationBarHidden = true
        
        bt_viewAll.setImage(UIImage(named: "bt_viewAll"), forState: .Normal)
        bt_viewAll.backgroundColor = background_color_state
        bt_viewAll.tintColor = real_back_color
        bt_soundIcon.setImage(UIImage(named: "bt_soundIcon"), forState: .Normal)
        bt_soundIcon.backgroundColor = background_color_state
        bt_soundIcon.tintColor = real_back_color
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        /* 첫화면 설정 */
        self.view.backgroundColor = real_back_color
        img_temp.backgroundColor = background_color_state
        /* 버튼 설정 */
        bt_exit.setTitle("종료", forState: .Normal)
        bt_exit.setTitleColor(text_color, forState: .Normal)
        bt_exit.backgroundColor = real_back_color
        bt_exit.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 5)
        bt_temp_view.setTitle("전체보기", forState: .Normal)
        bt_temp_view.setTitleColor(text_color, forState: .Normal)
        bt_temp_view.backgroundColor = real_back_color
        bt_temp_view.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 5)
        bt_no.setTitle("아니오", forState: .Normal)
        bt_no.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        bt_no.backgroundColor = UIColor.blackColor()
        bt_no.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        
        bt_yes.setTitle("네", forState: .Normal)
        bt_yes.setTitleColor(UIColor.blackColor(), forState: .Normal)
        bt_yes.backgroundColor = background_color_state
        bt_yes.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        
        
        /* 첫 이미지 */
        big_image.image = UIImage(named: "free_road1")
        big_image.backgroundColor = real_back_color
        small_image.image = UIImage(named: "free_small1~3")
        text_image.image = UIImage(named: "free_text1~3")
        let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(Begin_juhang_ViewController.imageTapped(_:)))
        big_image.userInteractionEnabled = true
        big_image.addGestureRecognizer(tapGestureRecognizer)
        
        explanation_view.hidden = true
        bt_no.hidden = true
        bt_yes.hidden = true
        
        /* time label */
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Hour, .Minute], fromDate: date)
        let hour = components.hour
        let minutes = components.minute
        
        var current_minutes = minutes + 30
        var current_hour = hour
        
        var text_minutes = ""
        var text_hour = ""
        
        if current_minutes >= 60
        {
            current_hour += 1
            current_minutes -= 60
        }
        
        if current_minutes < 10
        {
            text_minutes = "0" + String(current_minutes)
        }
        else
        {
            text_minutes = String(current_minutes)
        }
        
        print(text_minutes)
        
        if current_hour > 12
        {
            current_hour = current_hour - 12
            text_hour = String(current_hour)
            time_label.text = "오후 " + text_hour + ":" + text_minutes
        }
        else
        {
            text_hour = String(current_hour)
            time_label.text = "오전 " + text_hour + ":" + text_minutes
        }
        
        arrive_label.text = " 도착"
        
        arrive_label.textColor = text_color
        time_label.textColor = text_color
        time_label.font = UIFont(name : "AppleSDGothicNeo-Bold", size: text_size - 7)
        arrive_label.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 7)
        // Do any additional setup after loading the view.
    }
    
    /* 화면 사라질 때 네비게이션 바 나타나기. */
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
    
    func imageTapped(img: AnyObject)
    {
        num = num + 1
        let temp = name + String(num)
        big_image.image = UIImage(named: temp)
        if (num > 3 && num<11) {
            small_image.image = UIImage(named:"free_small4~10")
            text_image.image = UIImage(named: "free_text4~10")
            
        }
        else if(num > 10 && num < 14) {
            small_image.image = UIImage(named:"free_small10-13")
            text_image.image = UIImage(named: "free_text10_13")
        }
        else if(num > 13 && num < 17) {
            small_image.image = UIImage(named:"free_small14-16")
            text_image.image = UIImage(named: "free_text14-16")
        }
       
    }

    @IBAction func yesAction(sender: AnyObject)
    {
        
    }
    
    @IBAction func noAction(sender: AnyObject)
    {
        explanation_view.hidden = true
        bt_no.hidden = true
        bt_yes.hidden = true
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
