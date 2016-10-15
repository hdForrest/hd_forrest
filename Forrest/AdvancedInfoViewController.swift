//
//  AdvancedInfoViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 11..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class AdvancedInfoViewController: UIViewController
{
    var scroll_view: UIScrollView!
    var won_name = ["가로수원", "목련원", "생울타리원", "들국화원", "망개나무원", "철쭉원", "희귀식물원", "전시온실", "삼미담", "창포원", "무궁화원", "백합원"]
    
    @IBOutlet weak var img_flower: UIImageView!
    @IBOutlet weak var bt_juhang: UIButton!
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar text set */
        self.navigationItem.title = "코스 설명"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.tabBarController?.navigationController!.navigationBar.barTintColor = real_back_color
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        
        /* 주행하기 버튼 설정 */
        bt_juhang.setTitle("주행 하기", forState: .Normal)
        bt_juhang.setTitleColor(UIColor.blackColor(), forState: .Normal)
        bt_juhang.backgroundColor = background_color_state
        bt_juhang.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        createScrollMenu()
        img_flower.image = UIImage(named: "img_begin_backhop")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createScrollMenu()
    {
        scroll_view = UIScrollView(frame: CGRectMake(0, 280, self.view.frame.size.width, 80))
        
        var bt_X = CGFloat(0)
        for i in 0...11
        {
            let bt = UIButton()
            bt.frame = CGRectMake(bt_X, 20, 150, 60)
            bt.setTitle(won_name[i], forState: .Normal)
            bt.titleLabel!.font = UIFont(name: "AppleSDGothicNeo-Regular", size: text_size)
            bt.setTitleColor(background_color_state, forState: .Normal)
            switch i
            {
            case 0: bt.addTarget(self, action: #selector(clicked_0), forControlEvents: UIControlEvents.TouchUpInside)
            case 1: bt.addTarget(self, action: #selector(clicked_1), forControlEvents: UIControlEvents.TouchUpInside)
            case 2: bt.addTarget(self, action: #selector(clicked_2), forControlEvents: UIControlEvents.TouchUpInside)
            case 3: bt.addTarget(self, action: #selector(clicked_3), forControlEvents: UIControlEvents.TouchUpInside)
            case 4: bt.addTarget(self, action: #selector(clicked_4), forControlEvents: UIControlEvents.TouchUpInside)
            case 5: bt.addTarget(self, action: #selector(clicked_5), forControlEvents: UIControlEvents.TouchUpInside)
            case 6: bt.addTarget(self, action: #selector(clicked_6), forControlEvents: UIControlEvents.TouchUpInside)
            case 7: bt.addTarget(self, action: #selector(clicked_7), forControlEvents: UIControlEvents.TouchUpInside)
            case 8: bt.addTarget(self, action: #selector(clicked_8), forControlEvents: UIControlEvents.TouchUpInside)
            case 9: bt.addTarget(self, action: #selector(clicked_8), forControlEvents: UIControlEvents.TouchUpInside)
            case 10: bt.addTarget(self, action: #selector(clicked_8), forControlEvents: UIControlEvents.TouchUpInside)
            case 11: bt.addTarget(self, action: #selector(clicked_8), forControlEvents: UIControlEvents.TouchUpInside)
            default : break
            }
            
            bt.backgroundColor = real_back_color
            scroll_view.addSubview(bt)
            bt_X += bt.frame.size.width
        }
        
        scroll_view.contentSize = CGSizeMake(bt_X, scroll_view.frame.size.height)
        scroll_view.bounces = false
        self.view.addSubview(scroll_view)
    }
    
    
    /* menu click */
    func clicked_0()
    {
        img_flower.image = UIImage(named: "img_inte_garo")
    }
    func clicked_1()
    {
        img_flower.image = UIImage(named: "img_inte_mok")
    }
    func clicked_2()
    {
        img_flower.image = UIImage(named: "img_begin_backhop")
    }
    func clicked_3()
    {
        img_flower.image = UIImage(named: "img_begin_delguk")
    }
    func clicked_4()
    {
        img_flower.image = UIImage(named: "img_begin_mang")
    }
    func clicked_5()
    {
        img_flower.image = UIImage(named: "img_begin_chul")
    }
    func clicked_6()
    {
        img_flower.image = UIImage(named: "img_begin_heui")
    }
    func clicked_7()
    {
        img_flower.image = UIImage(named: "img_begin_junsi")
    }
    func clicked_8()
    {
        img_flower.image = UIImage(named: "img_begin_sim")
    }
    func clicked_9()
    {
        img_flower.image = UIImage(named: "img_begin_chang")
    }
    func clicked_10()
    {
        img_flower.image = UIImage(named: "img_begin_mugung")
    }
    func clicked_11()
    {
        img_flower.image = UIImage(named: "img_begin_backhop")
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
