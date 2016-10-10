//
//  BeginnerViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 9. 25..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class BeginnerViewController: UIViewController, UIScrollViewDelegate
{
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
        
        /* navigation bar text set */
        self.tabBarController?.navigationItem.title = "초급 주행"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.tabBarController?.navigationController!.navigationBar.barTintColor = real_back_color
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        
        /* tab bar set */
        self.tabBarController?.tabBar.backgroundColor = real_back_color
        self.tabBarController?.tabBar.tintColor = background_color_state
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        /* 사진 띄우기 */
        image_view = UIImageView(image: UIImage(named: "beginner_map"))
        image_view.contentMode = .ScaleAspectFill
        scroll_view = UIScrollView(frame: view.bounds)
        scroll_view.contentSize = image_view.frame.size //bound를  frame으로 바꿈
        scroll_view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        // 초기 위치 설정
        scroll_view.contentOffset = CGPoint(x: 1230, y: 480)
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
     {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}














