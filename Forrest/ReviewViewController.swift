//
//  ReviewViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 14..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var review_table: UITableView!
    
    @IBOutlet weak var bt_all: UIButton!
    @IBOutlet weak var bt_begin: UIButton!
    @IBOutlet weak var bt_inte: UIButton!
    @IBOutlet weak var bt_adv: UIButton!
    @IBOutlet weak var bt_free: UIButton!
    @IBOutlet weak var bt_write: UIButton!
    
    var is_bt_clicked_all = true
    var is_bt_clicked_begin = false
    var is_bt_clicked_inte = false
    var is_bt_clicked_adv = false
    var is_bt_clicked_free = false
    var check_clicked = 0
    var check_state = [0,0,0,0]
    
    /* 버튼 클릭 설정 */
    @IBAction func clicked_all(sender: AnyObject)
    {
        if (is_bt_clicked_all == false)
        {
            bt_all.setTitleColor(background_color_state, forState: .Normal)
            bt_begin.setTitleColor(text_color, forState: .Normal)
            bt_inte.setTitleColor(text_color, forState: .Normal)
            bt_adv.setTitleColor(text_color, forState: .Normal)
            bt_free.setTitleColor(text_color, forState: .Normal)
        }
        
        is_bt_clicked_all = true
        is_bt_clicked_begin = false
        is_bt_clicked_inte = false
        is_bt_clicked_adv = false
        is_bt_clicked_free = false
        check_clicked = 0
        /*
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
        self.review_table.reloadData()
        })
        */
        self.review_table.reloadData()
 
        }
    @IBAction func clicked_begin(sender: AnyObject)
    {
        if (is_bt_clicked_begin == false)
        {
            bt_all.setTitleColor(text_color, forState: .Normal)
            bt_begin.setTitleColor(background_color_state, forState: .Normal)
            bt_inte.setTitleColor(text_color, forState: .Normal)
            bt_adv.setTitleColor(text_color, forState: .Normal)
            bt_free.setTitleColor(text_color, forState: .Normal)
        }
        
        is_bt_clicked_all = false
        is_bt_clicked_begin = true
        is_bt_clicked_inte = false
        is_bt_clicked_adv = false
        is_bt_clicked_free = false
        check_clicked = 1
        
        self.review_table.reloadData()
        
    }
    @IBAction func clicked_inte(sender: AnyObject)
    {
        if (is_bt_clicked_inte == false)
        {
            bt_all.setTitleColor(text_color, forState: .Normal)
            bt_begin.setTitleColor(text_color, forState: .Normal)
            bt_inte.setTitleColor(background_color_state, forState: .Normal)
            bt_adv.setTitleColor(text_color, forState: .Normal)
            bt_free.setTitleColor(text_color, forState: .Normal)
        }
        
        is_bt_clicked_all = false
        is_bt_clicked_begin = false
        is_bt_clicked_inte = true
        is_bt_clicked_adv = false
        is_bt_clicked_free = false
        check_clicked = 2
        
        self.review_table.reloadData()
        
    }
    @IBAction func clicked_adv(sender: AnyObject)
    {
        if (is_bt_clicked_adv == false)
        {
            bt_all.setTitleColor(text_color, forState: .Normal)
            bt_begin.setTitleColor(text_color, forState: .Normal)
            bt_inte.setTitleColor(text_color, forState: .Normal)
            bt_adv.setTitleColor(background_color_state, forState: .Normal)
            bt_free.setTitleColor(text_color, forState: .Normal)
        }
        
        is_bt_clicked_all = false
        is_bt_clicked_begin = false
        is_bt_clicked_inte = false
        is_bt_clicked_adv = true
        is_bt_clicked_free = false
        check_clicked = 3
        
        self.review_table.reloadData()
        
    }
    @IBAction func clicked_free(sender: AnyObject)
    {
        if (is_bt_clicked_begin == false)
        {
            bt_all.setTitleColor(text_color, forState: .Normal)
            bt_begin.setTitleColor(text_color, forState: .Normal)
            bt_inte.setTitleColor(text_color, forState: .Normal)
            bt_adv.setTitleColor(text_color, forState: .Normal)
            bt_free.setTitleColor(background_color_state, forState: .Normal)
        }
        
        is_bt_clicked_all = false
        is_bt_clicked_begin = false
        is_bt_clicked_inte = false
        is_bt_clicked_adv = false
        is_bt_clicked_free = true
        check_clicked = 4
        
        self.review_table.reloadData()
        
    }
    
    /* table set */
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell_img : UIImageView = UIImageView(frame: CGRectMake(10, 10, 350, 260))
        
        switch check_clicked
        {
        case 0:
            switch indexPath.row
            {
                case 0:
                    if check_state[0] == 0
                    {
                        let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_1", forIndexPath: indexPath)
        
                        cell.backgroundColor = real_back_color
                        cell_img.image = UIImage(named: "review1")
                        cell.addSubview(cell_img)
                        check_state[0] = 1
                        return cell
                    }
                    else
                    {
                        let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_1", forIndexPath: indexPath)
                        return cell
                    }
            case 1:
                if check_state[1] == 0
                {
                    let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_2", forIndexPath: indexPath)
                    
                    cell.backgroundColor = real_back_color
                    cell_img.image = UIImage(named: "review2")
                    cell.addSubview(cell_img)
                    check_state[1] = 1
                    return cell
                }
                else
                {
                    let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_2", forIndexPath: indexPath)
                    return cell
                }
            case 2:
                if check_state[2] == 0
                {
                    let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_3", forIndexPath: indexPath)
                    
                    cell.backgroundColor = real_back_color
                    cell_img.image = UIImage(named: "review3")
                    cell.addSubview(cell_img)
                    check_state[2] = 1
                    return cell
                }
                else
                {
                    let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_3", forIndexPath: indexPath)
                    return cell
                }
            default:
                if check_state[3] == 0
                {
                    let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_4", forIndexPath: indexPath)
                    
                    cell.backgroundColor = real_back_color
                    cell_img.image = UIImage(named: "review4")
                    cell.addSubview(cell_img)
                    check_state[3] = 1
                    return cell
                }
                else
                {
                    let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_4", forIndexPath: indexPath)
                    return cell
                }
            }
        case 1:
            switch indexPath.row
            {
            case 0:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_3", forIndexPath: indexPath)
                return cell
            case 1:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_1", forIndexPath: indexPath)
                return cell
            case 2:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_2", forIndexPath: indexPath)
                return cell
            default:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_4", forIndexPath: indexPath)
                return cell
            }
        case 2:
            switch indexPath.row
            {
            case 0:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_3", forIndexPath: indexPath)
                return cell
            case 1:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_1", forIndexPath: indexPath)
                return cell
            case 2:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_2", forIndexPath: indexPath)
                return cell
            default:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_4", forIndexPath: indexPath)
                return cell
            }
        case 3:
            switch indexPath.row
            {
            case 0:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_3", forIndexPath: indexPath)
                return cell
            case 1:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_1", forIndexPath: indexPath)
                return cell
            case 2:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_2", forIndexPath: indexPath)
                return cell
            default:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_4", forIndexPath: indexPath)
                return cell
            }
        default :
            switch indexPath.row
            {
            case 0:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_3", forIndexPath: indexPath)
                return cell
            case 1:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_1", forIndexPath: indexPath)
                return cell
            case 2:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_2", forIndexPath: indexPath)
                return cell
            default:
                let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_4", forIndexPath: indexPath)
                return cell
            }
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 280.0
    }
    
    /* view will appear */
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation bar set */
        self.tabBarController?.navigationItem.title = "리뷰"
        self.tabBarController?.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        
        /* navigation bar color set */
        self.tabBarController?.navigationController!.navigationBar.barTintColor = real_back_color
        self.tabBarController?.navigationController!.navigationBar.tintColor = background_color_state
        
        /* tab bar set */
        self.tabBarController?.tabBar.barTintColor = real_back_color
        self.tabBarController?.tabBar.tintColor = background_color_state
        
        /* 디폴트 배경 설정 */
        self.view.backgroundColor = real_back_color
        
    }


    override func viewDidLoad()
    {
        super.viewDidLoad()

        /* table view set */
        review_table.delegate = self
        review_table.dataSource = self
        
        /* 버튼들 설정 */
        bt_write.setTitle("리뷰 쓰기", forState: .Normal)
        bt_write.setTitleColor(UIColor.blackColor(), forState: .Normal)
        bt_write.backgroundColor = background_color_state
        bt_write.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        bt_all.setTitle("전체 보기", forState: .Normal)
        bt_all.setTitleColor(background_color_state, forState: .Normal)
        bt_all.backgroundColor = real_back_color
        bt_all.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 9)
        bt_begin.setTitle("초급", forState: .Normal)
        bt_begin.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        bt_begin.backgroundColor = real_back_color
        bt_begin.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 9)
        bt_inte.setTitle("중급", forState: .Normal)
        bt_inte.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        bt_inte.backgroundColor = real_back_color
        bt_inte.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 9)
        bt_adv.setTitle("고급", forState: .Normal)
        bt_adv.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        bt_adv.backgroundColor = real_back_color
        bt_adv.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 9)
        bt_free.setTitle("자율 주행", forState: .Normal)
        bt_free.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        bt_free.backgroundColor = real_back_color
        bt_free.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size - 9)

        
        review_table.bounces = false
        
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
