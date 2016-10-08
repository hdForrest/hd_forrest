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
    
   var scroll_view: UIScrollView!
    var image_view: UIImageView!
    
    @IBOutlet weak var bt_travel_start: UIButton!
    
    /*
    @IBAction func click_start(sender: AnyObject)
    {
        self.performSegueWithIdentifier("travel_start", sender: sender)
        //prepareForSegue("travel_start", sender: sender)
    }*/
    
    /* 사라질 때 navigation bar 숨기기 */
    override func viewWillDisappear(animated:Bool)
    {
        super.viewWillDisappear(animated)
        //self.navigationController?.navigationBarHidden = true
    }
    
    /* zoom function */
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
    {
        return image_view
    }
    
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar set */
        self.tabBarController?.navigationItem.title = "초급 주행"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor(), NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        self.tabBarController?.navigationController!.navigationBar.barTintColor = UIColor.blackColor()
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        
        /* tab bar set */
        self.tabBarController?.tabBar.backgroundColor = UIColor.blackColor()
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
        
        //image_view.addSubview(bt_travel_start)
        
        
      
        /* 주행시작 버튼 이미지 입히기 */
        //bt_travel_start.setImage(UIImage(named: "bt_travel_start"), forState: .Normal)
        bt_travel_start.layer.cornerRadius = 0.5 * bt_travel_start.bounds.size.width
        //bt_travel_start.tintColor = UIColor(red: CGFloat(100/225.0), green: CGFloat(250/255.0), blue: CGFloat(194/255.0), alpha: CGFloat(1.0))
        bt_travel_start.backgroundColor = background_color_state
        
        bt_travel_start.layer.zPosition = 1
        
        
        
        //bt_travel_start.frame = CGRectMake(0, 0, 20, 20)
        
        //self.view.frame = scroll_view.bounds
       // image_view.userInteractionEnabled = false
       // scroll_view.userInteractionEnabled = false
        //scroll_view.exclusiveTouch = true
        //scroll_view.canCancelContentTouches = true
        scroll_view.delaysContentTouches = false
        //bt_travel_start.frame = scroll_view.bounds
        //bt_travel_start.userInteractionEnabled = true
      //   scroll_view.addSubview(bt_travel_start)
        
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














