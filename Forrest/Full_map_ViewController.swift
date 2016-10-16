//
//  Full_map_ViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 17..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class Full_map_ViewController: UIViewController, UIScrollViewDelegate
{
    var scroll_view: UIScrollView!
    var image_view: UIImageView!
    
    func clicked_bt()
    {
        self.navigationController?.popViewControllerAnimated(true)
        //performSegueWithIdentifier("", sender: self)
    }
    
    /* zoom function */
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
    {
        return image_view
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation 바 숨기기 */
        //self.navigationController?.navigationBarHidden = true
        
        /* top layout */
        let top : UIImageView = UIImageView(frame: CGRectMake(0, 0, 375, 50))
        //top.backgroundColor = table_color
        
        let label = UILabel(frame: CGRectMake(130, 0, 100, 50))
        label.text = "전체 지도"
        label.textColor = text_color
        label.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        
        let button = UIButton(type: UIButtonType.Custom)
        button.frame = CGRectMake(280, 0, 100, 50)
        button.setTitle("닫기", forState: .Normal)
        button.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 5)
        button.addTarget(self, action: #selector(clicked_bt), forControlEvents: UIControlEvents.TouchUpInside)
        
        top.userInteractionEnabled = true
        top.addSubview(button)
        top.addSubview(label)
        self.navigationItem.titleView = top
        self.navigationItem.hidesBackButton = true
        //self.navigationController!.navigationBar.barTintColor = table_color
        self.navigationController!.navigationBar.backgroundColor = table_color
        
        //view.addSubview(top)
        
        /* top margine */
        //self.tableView.frame = CGRectMake(0, 100, self.tableView.frame.width, self.tableView.frame.height)
        //self.tableView.contentInset = UIEdgeInsetsMake(100, 0, 0, 0);
        
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
        scroll_view.contentOffset = CGPoint(x: 1230, y: 480)
        
        // zoom 정도 세팅
        scroll_view.delegate = self
        scroll_view.minimumZoomScale = 0.1
        scroll_view.maximumZoomScale = 3.0
        scroll_view.zoomScale = 0.5
        self.view.translatesAutoresizingMaskIntoConstraints = true
        
        /* 사진 띄우기 */
        scroll_view.addSubview(image_view)
        view?.addSubview(scroll_view)      //뷰에다가 두개 띄워버림
        /* scroll and click 다 되게 */
        scroll_view.delaysContentTouches = false

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
