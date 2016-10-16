//
//  Begin_juhang_ViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 11..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class Begin_juhang_ViewController: UIViewController
{
    var num = 1
    var name = "beginner_map"

    @IBOutlet weak var bt_exit: UIButton!
    @IBOutlet weak var bt_viewAll: UIButton!
    @IBOutlet weak var bt_soundIcon: UIButton!
    @IBOutlet weak var img_temp: UIImageView!

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
        bt_no.setTitle("아니오", forState: .Normal)
        bt_no.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        bt_no.backgroundColor = UIColor.blackColor()
        bt_no.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        
        bt_yes.setTitle("네", forState: .Normal)
        bt_yes.setTitleColor(UIColor.blackColor(), forState: .Normal)
        bt_yes.backgroundColor = background_color_state
        bt_yes.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        
        
        /* 첫 이미지 */
        big_image.image = UIImage(named: "beginner_map1")
        big_image.backgroundColor = real_back_color
        small_image.image = UIImage(named: "begin_small1~4")
        text_image.image = UIImage(named: "begin_text1~4")
        let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(Begin_juhang_ViewController.imageTapped(_:)))
        big_image.userInteractionEnabled = true
        big_image.addGestureRecognizer(tapGestureRecognizer)
        
        explanation_view.hidden = true
        bt_no.hidden = true
        bt_yes.hidden = true
        
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
        if (num > 4 && num<13) {
            small_image.image = UIImage(named:"begin_small5~12")
            text_image.image = UIImage(named: "begin_text5~12")
            if(num == 9){
            explanation_view.hidden = false
            bt_yes.hidden = false
            bt_no.hidden = false
            
            }
            else {
                explanation_view.hidden = true
                bt_no.hidden = true
                bt_yes.hidden = true
            }
            
        }
        else if(num > 12 && num < 18) {
            small_image.image = UIImage(named:"begin_small13~17")
            text_image.image = UIImage(named: "begin_text13~17")
        
        }
        else if(num > 17 && num < 20) {
            small_image.image = UIImage(named:"begin_small18~19")
            text_image.image = UIImage(named: "begin_text18~19")
        }
        else if( num > 19 && num < 23){
            small_image.image = UIImage(named:"begin_small20~22")
            text_image.image = UIImage(named: "begin_text20~22")
        }
        else if( num > 22 && num < 27){
            small_image.image = UIImage(named:"begin_small23~26")
            text_image.image = UIImage(named: "begin_text23~26")
        }
    }

    @IBAction func yesAction(sender: AnyObject) {
        
        
    }
    @IBAction func noAction(sender: AnyObject) {
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
