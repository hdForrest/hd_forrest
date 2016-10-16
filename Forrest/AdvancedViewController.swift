//
//  AdvancedViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 5..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class AdvancedViewController: UIViewController, UIScrollViewDelegate
{
    let bt_bakhop_won = UIButton(type: UIButtonType.Custom)
    
    @IBOutlet weak var bt_travel_start: UIButton!
    
    var scroll_view: UIScrollView!
    var image_view: UIImageView!
    
    /* zoom function */
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
    {
        return image_view
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar set */
        self.tabBarController?.navigationItem.title = "고급 주행"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.tabBarController?.navigationController!.navigationBar.barTintColor = real_back_color
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        
        /* tab bar set */
        self.tabBarController?.tabBar.barTintColor = real_back_color
        self.tabBarController?.tabBar.tintColor = background_color_state
        
        bt_bakhop_won.setImage(nil, forState: .Normal)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        /* 사진 띄우기 */
        image_view = UIImageView(image: UIImage(named: "advanced_map"))
        image_view.contentMode = .ScaleAspectFill
        scroll_view = UIScrollView(frame: view.bounds)
        scroll_view.contentSize = image_view.frame.size //bound를  frame으로 바꿈
        scroll_view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // 초기 위치 설정
        scroll_view.contentOffset = CGPoint(x: 1335, y: 530)
        
        // zoom 정도 세팅
        scroll_view.delegate = self
        scroll_view.minimumZoomScale = 0.1
        scroll_view.maximumZoomScale = 3.0
        scroll_view.zoomScale = 0.5
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        /* 주행시작 버튼 이미지 입히기 */
        bt_travel_start.layer.cornerRadius = 0.5 * bt_travel_start.bounds.size.width
        bt_travel_start.backgroundColor = background_color_state
        /* 버튼 맨 위에 있게 */
        bt_travel_start.layer.zPosition = 1
        
        /* 백합원 띄우기 */
        bt_bakhop_won.frame = CGRectMake(3088, 1495, 200, 100)
        bt_bakhop_won.layer.cornerRadius = 0.25 * bt_bakhop_won.bounds.size.width
        //bt_bakhop_won.backgroundColor = UIColor.orangeColor()
        bt_bakhop_won.addTarget(self, action: #selector(clicked_bt), forControlEvents: UIControlEvents.TouchUpInside)
        image_view.addSubview(bt_bakhop_won)
        image_view.userInteractionEnabled = true
        
        /* scroll and click 다 되게 */
        scroll_view.delaysContentTouches = false
        
        /* 사진 띄우기 */
        scroll_view.addSubview(image_view)
        view?.addSubview(scroll_view)      //뷰에다가 두개 띄워버림
        view.addSubview(bt_travel_start)
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func clicked_bt(sender: UIButton)
    {
        performSegueWithIdentifier("advanced_won_soga", sender: self)
        bt_bakhop_won.setImage(UIImage(named: "bt_bakhop"), forState: .Normal)
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
