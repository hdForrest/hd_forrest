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

    @IBOutlet weak var big_image: UIImageView!
    @IBOutlet weak var small_image: UIImageView!
    @IBOutlet weak var text_image: UIImageView!
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation 바 숨기기 */
        self.navigationController?.navigationBarHidden = true
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        /* 첫화면 설정 */
        self.view.backgroundColor = real_back_color
        
        /* 버튼 설정 */
        bt_exit.setTitle("종료", forState: .Normal)
        bt_exit.setTitleColor(text_color, forState: .Normal)
        bt_exit.backgroundColor = real_back_color
        bt_exit.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 5)
        bt_viewAll.setTitle("전체보기", forState: .Normal)
        bt_viewAll.setTitleColor(text_color, forState: .Normal)
        bt_viewAll.backgroundColor = real_back_color
        bt_viewAll.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 5)
        
        /* 첫 이미지 */
        big_image.image = UIImage(named: "beginner_map1")
        big_image.backgroundColor = background_color_state
        small_image.image = UIImage(named: "begin_small1~4")
        text_image.image = UIImage(named: "begin_text1~4")
        let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(Begin_juhang_ViewController.imageTapped(_:)))
        big_image.userInteractionEnabled = true
        big_image.addGestureRecognizer(tapGestureRecognizer)
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
        var temp = name + String(num)
        big_image.image = UIImage(named: temp)
        if (num > 4 && num<13) {
            small_image.image = UIImage(named:"begin_small5~12")
            text_image.image = UIImage(named: "begin_text5~12")
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
