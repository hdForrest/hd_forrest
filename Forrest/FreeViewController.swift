//
//  FreeViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 5..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class FreeViewController: UIViewController, UIScrollViewDelegate
{
    @IBOutlet weak var bt_travel_start: UIButton!
    
    var scroll_view: UIScrollView!
    var image_view: UIImageView!
    
    let bt_bakhop = UIButton(type: UIButtonType.Custom)
    let bt_bakhop_check = UIButton(type: UIButtonType.Custom)
    let bt_mugung = UIButton(type: UIButtonType.Custom)
    let bt_mugung_check = UIButton(type: UIButtonType.Custom)
    let bt_chang = UIButton(type: UIButtonType.Custom)
    let bt_chang_check = UIButton(type: UIButtonType.Custom)
    let bt_sam = UIButton(type: UIButtonType.Custom)
    let bt_sam_check = UIButton(type: UIButtonType.Custom)
    let bt_jandi = UIButton(type: UIButtonType.Custom)
    let bt_jandi_check = UIButton(type: UIButtonType.Custom)
    let bt_jipi = UIButton(type: UIButtonType.Custom)
    let bt_jipi_check = UIButton(type: UIButtonType.Custom)
    
    
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
        bt_mugung.setImage(nil, forState: .Normal)
        bt_mugung_check.setImage(nil, forState: .Normal)
        bt_chang.setImage(nil, forState: .Normal)
        bt_chang_check.setImage(nil, forState: .Normal)
        bt_sam.setImage(nil, forState: .Normal)
        bt_jandi.setImage(nil, forState: .Normal)
        bt_jandi_check.setImage(nil, forState: .Normal)
        bt_jipi.setImage(nil, forState: .Normal)
        
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
        
        
        /* 백합원 띄우기 */
        bt_bakhop.frame = CGRectMake(3037, 1492, 300, 105)
        bt_bakhop.layer.cornerRadius = 0.2 * bt_bakhop.bounds.size.width
        //bt_won.backgroundColor = UIColor.orangeColor()
        bt_bakhop.addTarget(self, action: #selector(clicked_bt_bh), forControlEvents: UIControlEvents.TouchUpInside)
        image_view.addSubview(bt_bakhop)
        image_view.userInteractionEnabled = true
        
        /* 무궁화원 띄우기 */
        bt_mugung.frame = CGRectMake(2800, 1400, 260, 105)
        bt_mugung.layer.cornerRadius = 0.18 * bt_mugung.bounds.size.width
        //bt_mugung_won.backgroundColor = UIColor.orangeColor()
        bt_mugung.addTarget(self, action: #selector(clicked_bt_mg), forControlEvents: UIControlEvents.TouchUpInside)
        image_view.addSubview(bt_mugung)
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
    
    
    func clicked_bt_bh(sender: UIButton)
    {
        bt_bakhop.setImage(UIImage(named: "free_bak_1"), forState: .Normal)
    }
    
    func clicked_bt_mg(sender: UIButton)
    {
        bt_mugung.setImage(UIImage(named: "free_chang_1"), forState: .Normal)
    }
    
    func clicked_bt_bchang(sender: UIButton)
    {
        bt_chang.setImage(UIImage(named: "free_jan_1"), forState: .Normal)
    }
    
    func clicked_bt_sam(sender: UIButton)
    {
        bt_sam.setImage(UIImage(named: "free_jipi_1"), forState: .Normal)
    }
    
    func clicked_bt_jandi(sender: UIButton)
    {
        bt_jandi.setImage(UIImage(named: "free_mugung_1"), forState: .Normal)
    }
    
    func clicked_bt_jipi(sender: UIButton)
    {
        bt_jipi.setImage(UIImage(named: "free_sam_1"), forState: .Normal)
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
