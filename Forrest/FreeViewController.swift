//
//  FreeViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 5..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

var info = 0

class FreeViewController: UIViewController, UIScrollViewDelegate
{
    @IBOutlet weak var bt_travel_start: UIButton!
    
    var scroll_view: UIScrollView!
    var image_view: UIImageView!
    
    let bt_bakhop = UIButton(type: UIButtonType.Custom)
    let bt_bakhop_check = UIButton(type: UIButtonType.Custom)
    let bt_bakhop_info = UIButton(type: UIButtonType.Custom)
    let bt_mugung = UIButton(type: UIButtonType.Custom)
    let bt_mugung_check = UIButton(type: UIButtonType.Custom)
    let bt_mugung_info = UIButton(type: UIButtonType.Custom)
    let bt_chang = UIButton(type: UIButtonType.Custom)
    let bt_chang_check = UIButton(type: UIButtonType.Custom)
    let bt_chang_info = UIButton(type: UIButtonType.Custom)
    let bt_sam = UIButton(type: UIButtonType.Custom)
    let bt_sam_check = UIButton(type: UIButtonType.Custom)
    let bt_sam_info = UIButton(type: UIButtonType.Custom)
    let bt_jandi = UIButton(type: UIButtonType.Custom)
    let bt_jandi_check = UIButton(type: UIButtonType.Custom)
    let bt_jandi_info = UIButton(type: UIButtonType.Custom)
    let bt_jipi = UIButton(type: UIButtonType.Custom)
    let bt_jipi_check = UIButton(type: UIButtonType.Custom)
    let bt_jipi_info = UIButton(type: UIButtonType.Custom)
    
    var bakhop_state = 0
    var mugung_state = 0
    var chang_state = 0
    var sam_state = 0
    var jandi_state = 0
    var jipi_state = 0
    var road_1 = UIImage(named: "road_1")
    
    /* zoom function */
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
    {
        return image_view
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar set */
        self.tabBarController?.navigationItem.title = "자율 주행"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.tabBarController?.navigationController!.navigationBar.barTintColor = real_back_color
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        
        /* tab bar set */
        self.tabBarController?.tabBar.backgroundColor = real_back_color
        self.tabBarController?.tabBar.tintColor = background_color_state
        
        bt_bakhop.setImage(nil, forState: .Normal)
        bt_bakhop_check.setImage(nil, forState: .Normal)
        bt_bakhop_info.setImage(nil, forState: .Normal)
        bt_mugung.setImage(nil, forState: .Normal)
        bt_mugung_check.setImage(nil, forState: .Normal)
        bt_mugung_info.setImage(nil, forState: .Normal)
        bt_chang.setImage(nil, forState: .Normal)
        bt_chang_check.setImage(nil, forState: .Normal)
        bt_sam.setImage(nil, forState: .Normal)
        bt_sam_check.setImage(nil, forState: .Normal)
        bt_jandi.setImage(nil, forState: .Normal)
        bt_jandi_check.setImage(nil, forState: .Normal)
        bt_jipi.setImage(nil, forState: .Normal)
        bt_jipi_check.setImage(nil, forState: .Normal)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        /* 사진 띄우기 */
        image_view = UIImageView(image: UIImage(named: "free_map"))
        image_view.contentMode = .ScaleAspectFill
        scroll_view = UIScrollView(frame: view.bounds)
        scroll_view.contentSize = image_view.frame.size //bound를  frame으로 바꿈
        scroll_view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // 초기 위치 설정
        scroll_view.contentOffset = CGPoint(x: 1315, y: 510)
        
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
        
        /* button input */
        input_bt()
        
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
    
    func input_bt()
    {
        /* 백합원 띄우기 */
        bt_bakhop.frame = CGRectMake(3036.5, 1493, 300, 105)
        bt_bakhop.layer.cornerRadius = 0.2 * bt_bakhop.bounds.size.width
        //bt_won.backgroundColor = UIColor.orangeColor()
        bt_bakhop.addTarget(self, action: #selector(clicked_bt_bh), forControlEvents: UIControlEvents.TouchUpInside)
        image_view.addSubview(bt_bakhop)
        image_view.userInteractionEnabled = true
        
        /* 무궁화원 띄우기 */
        bt_mugung.frame = CGRectMake(2802.5, 1401.5, 260, 105)
        bt_mugung.layer.cornerRadius = 0.18 * bt_mugung.bounds.size.width
        //bt_mugung_won.backgroundColor = UIColor.orangeColor()
        bt_mugung.addTarget(self, action: #selector(clicked_bt_mg), forControlEvents: UIControlEvents.TouchUpInside)
        image_view.addSubview(bt_mugung)
        image_view.userInteractionEnabled = true
        
        /* 창포원 띄우기 */
        bt_chang.frame = CGRectMake(2469.5, 1474.5, 260, 105)
        bt_chang.layer.cornerRadius = 0.18 * bt_chang.bounds.size.width
        //bt_mugung_won.backgroundColor = UIColor.orangeColor()
        bt_chang.addTarget(self, action: #selector(clicked_bt_ch), forControlEvents: UIControlEvents.TouchUpInside)
        image_view.addSubview(bt_chang)
        image_view.userInteractionEnabled = true

        /* 삼 띄우기 */
        bt_sam.frame = CGRectMake(2098, 1557, 260, 105)
        bt_sam.layer.cornerRadius = 0.18 * bt_sam.bounds.size.width
        //bt_sam.backgroundColor = UIColor.redColor()
        bt_sam.addTarget(self, action: #selector(clicked_bt_sam), forControlEvents: UIControlEvents.TouchUpInside)
        image_view.addSubview(bt_sam)
        image_view.userInteractionEnabled = true
        
        /* 잔디 띄우기 */
        bt_jandi.frame = CGRectMake(1947, 1304.5, 260, 105)
        bt_jandi.layer.cornerRadius = 0.18 * bt_jandi.bounds.size.width
        //bt_jandi.backgroundColor = UIColor.orangeColor()
        bt_jandi.addTarget(self, action: #selector(clicked_bt_jandi), forControlEvents: UIControlEvents.TouchUpInside)
        image_view.addSubview(bt_jandi)
        image_view.userInteractionEnabled = true
        
        /* 지피 띄우기 */
        bt_jipi.frame = CGRectMake(2419, 1198, 260, 105)
        bt_jipi.layer.cornerRadius = 0.18 * bt_jipi.bounds.size.width
        //bt_mugung_won.backgroundColor = UIColor.orangeColor()
        bt_jipi.addTarget(self, action: #selector(clicked_bt_jipi), forControlEvents: UIControlEvents.TouchUpInside)
        image_view.addSubview(bt_jipi)
        image_view.userInteractionEnabled = true
    }
    
    /* bakhop */
    func clicked_bt_bh(sender: UIButton)
    {
        switch(bakhop_state)
        {
        case 0:
            bt_bakhop.setImage(UIImage(named: "free_bak_1"), forState: .Normal)
            
            /* check 띄우기 */
            bt_bakhop_check.setImage(UIImage(named: "check_1"), forState: .Normal)
            bt_bakhop_check.frame = CGRectMake(3225, 1385, 100, 100)
            bt_bakhop_check.layer.cornerRadius = 0.5 * bt_bakhop_check.bounds.size.width
            bt_bakhop_check.addTarget(self, action: #selector(clicked_bh_check), forControlEvents: UIControlEvents.TouchUpInside)
            image_view.addSubview(bt_bakhop_check)
            image_view.userInteractionEnabled = true
            /* info 띄우기 */
            bt_bakhop_info.setImage(UIImage(named: "info_1"), forState: .Normal)
            bt_bakhop_info.frame = CGRectMake(3065, 1385, 100, 100)
            bt_bakhop_info.layer.cornerRadius = 0.5 * bt_bakhop_info.bounds.size.width
            bt_bakhop_info.addTarget(self, action: #selector(clicked_bh_info), forControlEvents: UIControlEvents.TouchUpInside)
            image_view.addSubview(bt_bakhop_info)
            image_view.userInteractionEnabled = true
            bakhop_state = 1
        case 1:
            bt_bakhop.setImage(nil, forState: .Normal)
            bt_bakhop_check.setImage(nil, forState: .Normal)
            bt_bakhop_info.setImage(nil, forState: .Normal)
            bakhop_state = 0
        default :break
        }
        
    }
    func clicked_bh_check(sender: UIButton)
    {
        /* 사진 띄우기 */
        image_view = UIImageView(image: UIImage(named: "map_1"))
        image_view.contentMode = .ScaleAspectFill
        scroll_view = UIScrollView(frame: view.bounds)
        scroll_view.contentSize = image_view.frame.size //bound를  frame으로 바꿈
        scroll_view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // 초기 위치 설정
        scroll_view.contentOffset = CGPoint(x: 1000, y: 410)
        
        // zoom 정도 세팅
        scroll_view.delegate = self
        scroll_view.minimumZoomScale = 0.1
        scroll_view.maximumZoomScale = 3.0
        scroll_view.zoomScale = 0.5
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        /* scroll and click 다 되게 */
        scroll_view.delaysContentTouches = false
        
        /* 사진 띄우기 */
        scroll_view.addSubview(image_view)
        view?.addSubview(scroll_view)   //뷰에다가 두개 띄워버림
        
        input_bt()
        
        bt_bakhop.setImage(UIImage(named: "free_bak_2"), forState: .Normal)
    }
    
    func clicked_bh_info(sender: UIButton)
    {
        performSegueWithIdentifier("free_won_soga", sender: self)
        info = 0
    }
    
    /* mugung */
    func clicked_bt_mg(sender: UIButton)
    {
        switch(mugung_state)
        {
        case 0:
            bt_mugung.setImage(UIImage(named: "free_mugung_1"), forState: .Normal)
            
            /* check 띄우기 */
            bt_mugung_check.setImage(UIImage(named: "check_1"), forState: .Normal)
            bt_mugung_check.frame = CGRectMake(2991, 1293.5, 100, 100)
            bt_mugung_check.layer.cornerRadius = 0.5 * bt_mugung_check.bounds.size.width
            bt_mugung_check.addTarget(self, action: #selector(clicked_mg_check), forControlEvents: UIControlEvents.TouchUpInside)
            image_view.addSubview(bt_mugung_check)
            image_view.userInteractionEnabled = true
            /* info 띄우기 */
            bt_mugung_info.setImage(UIImage(named: "info_1"), forState: .Normal)
            bt_mugung_info.frame = CGRectMake(2772, 1293.5, 100, 100)
            bt_mugung_info.layer.cornerRadius = 0.5 * bt_mugung_info.bounds.size.width
            bt_mugung_info.addTarget(self, action: #selector(clicked_mg_info), forControlEvents: UIControlEvents.TouchUpInside)
            image_view.addSubview(bt_mugung_info)
            image_view.userInteractionEnabled = true
            mugung_state = 1
        case 1:
            bt_mugung.setImage(nil, forState: .Normal)
            bt_mugung_check.setImage(nil, forState: .Normal)
            bt_mugung_info.setImage(nil, forState: .Normal)
            mugung_state = 0
        default :break
        }
    }
    func clicked_mg_check(sender: UIButton)
    {
        /* 사진 띄우기 */
        image_view = UIImageView(image: UIImage(named: "map_2"))
        image_view.contentMode = .ScaleAspectFill
        scroll_view = UIScrollView(frame: view.bounds)
        scroll_view.contentSize = image_view.frame.size //bound를  frame으로 바꿈
        scroll_view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // 초기 위치 설정
        scroll_view.contentOffset = CGPoint(x: 1000, y: 410)
        
        // zoom 정도 세팅
        scroll_view.delegate = self
        scroll_view.minimumZoomScale = 0.1
        scroll_view.maximumZoomScale = 3.0
        scroll_view.zoomScale = 0.5
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        /* scroll and click 다 되게 */
        scroll_view.delaysContentTouches = false
        
        /* 사진 띄우기 */
        scroll_view.addSubview(image_view)
        view?.addSubview(scroll_view)   //뷰에다가 두개 띄워버림
        
        input_bt()
        
        bt_mugung.setImage(UIImage(named: "free_mugung_2"), forState: .Normal)
    }
    
    func clicked_mg_info(sender: UIButton)
    {
        performSegueWithIdentifier("free_won_soga", sender: self)
        info = 1
    }
    
    /* chang */
    func clicked_bt_ch(sender: UIButton)
    {
        switch(chang_state)
        {
        case 0:
            bt_chang.setImage(UIImage(named: "free_chang_1"), forState: .Normal)
            
            /* check 띄우기 */
            bt_chang_check.setImage(UIImage(named: "check_1"), forState: .Normal)
            bt_chang_check.frame = CGRectMake(2658.5, 1366.5, 100, 100)
            bt_chang_check.layer.cornerRadius = 0.5 * bt_chang_check.bounds.size.width
            bt_chang_check.addTarget(self, action: #selector(clicked_ch_check), forControlEvents: UIControlEvents.TouchUpInside)
            image_view.addSubview(bt_chang_check)
            image_view.userInteractionEnabled = true
            /* info 띄우기 */
            bt_chang_info.setImage(UIImage(named: "info_1"), forState: .Normal)
            bt_chang_info.frame = CGRectMake(2439.5, 1366.5, 100, 100)
            bt_chang_info.layer.cornerRadius = 0.5 * bt_chang_info.bounds.size.width
            image_view.addSubview(bt_chang_info)
            image_view.userInteractionEnabled = true
            chang_state = 1
        case 1:
            bt_chang.setImage(nil, forState: .Normal)
            bt_chang_check.setImage(nil, forState: .Normal)
            bt_chang_info.setImage(nil, forState: .Normal)
            chang_state = 0
        default :break
        }
    }
    func clicked_ch_check(sender: UIButton)
    {
        /* 사진 띄우기 */
        image_view = UIImageView(image: UIImage(named: "map_3"))
        image_view.contentMode = .ScaleAspectFill
        scroll_view = UIScrollView(frame: view.bounds)
        scroll_view.contentSize = image_view.frame.size //bound를  frame으로 바꿈
        scroll_view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // 초기 위치 설정
        scroll_view.contentOffset = CGPoint(x: 850, y: 410)
        
        // zoom 정도 세팅
        scroll_view.delegate = self
        scroll_view.minimumZoomScale = 0.1
        scroll_view.maximumZoomScale = 3.0
        scroll_view.zoomScale = 0.5
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        /* scroll and click 다 되게 */
        scroll_view.delaysContentTouches = false
        
        /* 사진 띄우기 */
        scroll_view.addSubview(image_view)
        view?.addSubview(scroll_view)   //뷰에다가 두개 띄워버림
        
        input_bt()
        
        bt_chang.setImage(UIImage(named: "free_chang_2"), forState: .Normal)
    }
    
    /* sam */
    func clicked_bt_sam(sender: UIButton)
    {
        switch(sam_state)
        {
        case 0:
            bt_sam.setImage(UIImage(named: "free_sam_1"), forState: .Normal)
            
            /* check 띄우기 */
            bt_sam_check.setImage(UIImage(named: "check_1"), forState: .Normal)
            bt_sam_check.frame = CGRectMake(2287, 1449, 100, 100)
            bt_sam_check.layer.cornerRadius = 0.5 * bt_sam_check.bounds.size.width
            bt_sam_check.addTarget(self, action: #selector(clicked_sam_check), forControlEvents: UIControlEvents.TouchUpInside)
            image_view.addSubview(bt_sam_check)
            image_view.userInteractionEnabled = true
            /* info 띄우기 */
            bt_sam_info.setImage(UIImage(named: "info_1"), forState: .Normal)
            bt_sam_info.frame = CGRectMake(2068, 1449, 100, 100)
            bt_sam_info.layer.cornerRadius = 0.5 * bt_sam_info.bounds.size.width
            image_view.addSubview(bt_sam_info)
            image_view.userInteractionEnabled = true
            sam_state = 1
        case 1:
            bt_sam.setImage(nil, forState: .Normal)
            bt_sam_check.setImage(nil, forState: .Normal)
            bt_sam_info.setImage(nil, forState: .Normal)
            sam_state = 0
        default :break
        }
    }
    func clicked_sam_check(sender: UIButton)
    {
        /* 사진 띄우기 */
        image_view = UIImageView(image: UIImage(named: "map_4"))
        image_view.contentMode = .ScaleAspectFill
        scroll_view = UIScrollView(frame: view.bounds)
        scroll_view.contentSize = image_view.frame.size //bound를  frame으로 바꿈
        scroll_view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // 초기 위치 설정
        scroll_view.contentOffset = CGPoint(x: 750, y: 410)
        
        // zoom 정도 세팅
        scroll_view.delegate = self
        scroll_view.minimumZoomScale = 0.1
        scroll_view.maximumZoomScale = 3.0
        scroll_view.zoomScale = 0.5
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        /* scroll and click 다 되게 */
        scroll_view.delaysContentTouches = false
        
        /* 사진 띄우기 */
        scroll_view.addSubview(image_view)
        view?.addSubview(scroll_view)   //뷰에다가 두개 띄워버림
        image_view.addSubview(bt_bakhop)
        image_view.userInteractionEnabled = true
        
        input_bt()
        
        bt_sam.setImage(UIImage(named: "free_sam_2"), forState: .Normal)
    }
    
    
    /* jandi */
    func clicked_bt_jandi(sender: UIButton)
    {
        switch(jandi_state)
        {
        case 0:
            bt_jandi.setImage(UIImage(named: "free_jan_1"), forState: .Normal)
            
            /* check 띄우기 */
            bt_jandi_check.setImage(UIImage(named: "check_1"), forState: .Normal)
            bt_jandi_check.frame = CGRectMake(2136, 1196.5, 100, 100)
            bt_jandi_check.layer.cornerRadius = 0.5 * bt_jandi_check.bounds.size.width
            bt_jandi_check.addTarget(self, action: #selector(clicked_jandi_check), forControlEvents: UIControlEvents.TouchUpInside)
            image_view.addSubview(bt_jandi_check)
            image_view.userInteractionEnabled = true
            /* info 띄우기 */
            bt_jandi_info.setImage(UIImage(named: "info_1"), forState: .Normal)
            bt_jandi_info.frame = CGRectMake(1917, 1196.5, 100, 100)
            bt_jandi_info.layer.cornerRadius = 0.5 * bt_jandi_info.bounds.size.width
            image_view.addSubview(bt_jandi_info)
            image_view.userInteractionEnabled = true
            jandi_state = 1
        case 1:
            bt_jandi.setImage(nil, forState: .Normal)
            bt_jandi_check.setImage(nil, forState: .Normal)
            bt_jandi_info.setImage(nil, forState: .Normal)
            jandi_state = 0
        default :break
        }
    }
    func clicked_jandi_check(sender: UIButton)
    {
        /* 사진 띄우기 */
        image_view = UIImageView(image: UIImage(named: "map_5"))
        image_view.contentMode = .ScaleAspectFill
        scroll_view = UIScrollView(frame: view.bounds)
        scroll_view.contentSize = image_view.frame.size //bound를  frame으로 바꿈
        scroll_view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // 초기 위치 설정
        scroll_view.contentOffset = CGPoint(x: 700, y: 410)
        
        // zoom 정도 세팅
        scroll_view.delegate = self
        scroll_view.minimumZoomScale = 0.1
        scroll_view.maximumZoomScale = 3.0
        scroll_view.zoomScale = 0.5
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        /* scroll and click 다 되게 */
        scroll_view.delaysContentTouches = false
        
        /* 사진 띄우기 */
        scroll_view.addSubview(image_view)
        view?.addSubview(scroll_view)   //뷰에다가 두개 띄워버림
        image_view.addSubview(bt_bakhop)
        image_view.userInteractionEnabled = true
        
        input_bt()
        
        bt_jandi.setImage(UIImage(named: "free_jan_2"), forState: .Normal)
    }
    
    
    /* jipi */
    func clicked_bt_jipi(sender: UIButton)
    {
        switch(jipi_state)
        {
        case 0:
            bt_jipi.setImage(UIImage(named: "free_jipi_1"), forState: .Normal)
            
            /* check 띄우기 */
            bt_jipi_check.setImage(UIImage(named: "check_1"), forState: .Normal)
            bt_jipi_check.frame = CGRectMake(2608, 1090, 100, 100)
            bt_jipi_check.layer.cornerRadius = 0.5 * bt_jipi_check.bounds.size.width
            bt_jipi_check.addTarget(self, action: #selector(clicked_jipi_check), forControlEvents: UIControlEvents.TouchUpInside)
            image_view.addSubview(bt_jipi_check)
            image_view.userInteractionEnabled = true
            /* info 띄우기 */
            bt_jipi_info.setImage(UIImage(named: "info_1"), forState: .Normal)
            bt_jipi_info.frame = CGRectMake(2389, 1090, 100, 100)
            bt_jipi_info.layer.cornerRadius = 0.5 * bt_jipi_info.bounds.size.width
            image_view.addSubview(bt_jipi_info)
            image_view.userInteractionEnabled = true
            jipi_state = 1
        case 1:
            bt_jipi.setImage(nil, forState: .Normal)
            bt_jipi_check.setImage(nil, forState: .Normal)
            bt_jipi_info.setImage(nil, forState: .Normal)
            jipi_state = 0
        default :break
        }
    }
    func clicked_jipi_check(sender: UIButton)
    {
        /* 사진 띄우기 */
        image_view = UIImageView(image: UIImage(named: "map_6"))
        image_view.contentMode = .ScaleAspectFill
        scroll_view = UIScrollView(frame: view.bounds)
        scroll_view.contentSize = image_view.frame.size //bound를  frame으로 바꿈
        scroll_view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // 초기 위치 설정
        scroll_view.contentOffset = CGPoint(x: 850, y: 410)
        
        // zoom 정도 세팅
        scroll_view.delegate = self
        scroll_view.minimumZoomScale = 0.1
        scroll_view.maximumZoomScale = 3.0
        scroll_view.zoomScale = 0.5
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        /* scroll and click 다 되게 */
        scroll_view.delaysContentTouches = false
        
        /* 사진 띄우기 */
        scroll_view.addSubview(image_view)
        view?.addSubview(scroll_view)   //뷰에다가 두개 띄워버림
        image_view.addSubview(bt_bakhop)
        image_view.userInteractionEnabled = true
        
        input_bt()
        
        bt_jipi.setImage(UIImage(named: "free_jipi_2"), forState: .Normal)
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
