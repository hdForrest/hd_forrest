//
//  ColorSetTableViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 3..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class ColorSetTableViewController: UITableViewController
{
    /* cell 이름 정할 변수 */
    let cellText = ["글자 색상", "배경 색상", "대비 조절"]
    
    /* cell background color */
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
    {
        cell.backgroundColor = UIColor.clearColor()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        /* navigation bar set */
        self.navigationItem.title = "색상 설정"
        self.navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: text_color, NSFontAttributeName: UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)!]
        self.navigationController!.navigationBar.barTintColor = real_back_color
        self.navigationController!.navigationBar.tintColor = background_color_state
        
        /* background color set */
        self.tableView.backgroundColor = real_back_color
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Color_LabelCell", forIndexPath: indexPath)
        
        /* text set */
        //cell.textLabel!.text = cellText[indexPath.row]
        /* text color set */
        //cell.textLabel!.textColor = UIColor.whiteColor()
        /* text position */
        //cell.textLabel!.frame = CGRectMake(10, 10, 60, 50)
        //cell.textLabel?.contentMode = UIViewContentMode
        //cell.contentView.addSubview(cell.textLabel!)
        
        /* button */
        switch indexPath.row
        {
        case 0:
            /* label set */
            let label = UILabel(frame: CGRectMake(20, 10, 300, 30))
            label.text = cellText[indexPath.row]
            label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: text_size)
            label.textColor = text_color
            cell.contentView.addSubview(label)
            
            /* button 1 set */
            let bt_back_color11 = UIButton(type: UIButtonType.System)
            bt_back_color11.frame = CGRectMake(20, 70, 40, 40)
            bt_back_color11.layer.cornerRadius = 0.5 * bt_back_color11.bounds.size.width
            bt_back_color11.backgroundColor = UIColor(red: CGFloat(100/225.0), green: CGFloat(250/255.0), blue: CGFloat(194/255.0), alpha: CGFloat(1.0))
            bt_back_color11.addTarget(self, action: #selector(clicked_11), forControlEvents: UIControlEvents.TouchUpInside)
            cell.contentView.addSubview(bt_back_color11)
        case 1:
            /* label set */
            let label = UILabel(frame: CGRectMake(20, 10, 300, 30))
            label.text = cellText[indexPath.row]
            label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: text_size)
            label.textColor = text_color
            cell.contentView.addSubview(label)
            
            let bt_back_color21 = UIButton(type: UIButtonType.System)
            bt_back_color21.frame = CGRectMake(20, 70, 40, 40)
            bt_back_color21.layer.cornerRadius = 0.5 * bt_back_color21.bounds.size.width
            bt_back_color21.backgroundColor = UIColor.whiteColor()
            bt_back_color21.addTarget(self, action: #selector(clicked_21), forControlEvents: UIControlEvents.TouchUpInside)
            cell.contentView.addSubview(bt_back_color21)
        case 2:
            /* label set */
            let label = UILabel(frame: CGRectMake(20, 10, 300, 30))
            label.text = cellText[indexPath.row]
            label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: text_size)
            label.textColor = text_color
            cell.contentView.addSubview(label)
        default: break
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 151.0
    }

    /* button click event */
    func clicked_11(sender: UIButton)
    {
        background_color_state = UIColor(red: CGFloat(100/225.0), green: CGFloat(250/255.0), blue: CGFloat(194/255.0), alpha: CGFloat(1.0))
    }
    func clicked_21(sender: UIButton)
    {
        text_color = UIColor.blackColor()
        real_back_color = UIColor.whiteColor()
    }
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
