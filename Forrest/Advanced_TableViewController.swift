//
//  Advanced_TableViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 16..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class Advanced_TableViewController: UITableViewController
{
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
    {
        cell.backgroundColor = UIColor.clearColor()
    }
    
    
    func clicked_bt()
    {
        performSegueWithIdentifier("clicked_ok_adv", sender: self)
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        
        /* navigation 바 숨기기 */
        //self.navigationController?.navigationBarHidden = true
        
        /* top layout */
        let top : UIImageView = UIImageView(frame: CGRectMake(0, 0, 375, 50))
        //top.backgroundColor = table_color
        
        let label = UILabel(frame: CGRectMake(150, 0, 100, 50))
        label.text = "경로"
        label.textColor = text_color
        label.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
        
        let button = UIButton(type: UIButtonType.Custom)
        button.frame = CGRectMake(280, 0, 100, 50)
        button.setTitle("완료", forState: .Normal)
        button.titleLabel!.font = UIFont(name : "AppleSDGothicNeo-Regular", size: text_size)
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
        
        /* background color set */
        self.tableView.backgroundColor = table_color //real_back_color
        
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
        return 5
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 88.5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        switch indexPath.row
        {
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("adv_cell_1", forIndexPath: indexPath)
            
            cell.backgroundColor = table_color
            let cell_img_text : UIImageView = UIImageView(frame: CGRectMake(0, 0, 375, 88.5))
            cell_img_text.image = UIImage(named: "adv_1")
            cell.addSubview(cell_img_text)
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier("adv_cell_2", forIndexPath: indexPath)
            
            cell.backgroundColor = table_color
            let cell_img_text : UIImageView = UIImageView(frame: CGRectMake(0, 0, 375, 88.5))
            cell_img_text.image = UIImage(named: "adv_2")
            cell.addSubview(cell_img_text)
            
            return cell
        case 2:
            let cell = tableView.dequeueReusableCellWithIdentifier("adv_cell_3", forIndexPath: indexPath)
            
            cell.backgroundColor = table_color
            let cell_img_text : UIImageView = UIImageView(frame: CGRectMake(0, 0, 375, 88.5))
            cell_img_text.image = UIImage(named: "adv_3")
            cell.addSubview(cell_img_text)
            
            return cell
        case 3:
            let cell = tableView.dequeueReusableCellWithIdentifier("adv_cell_4", forIndexPath: indexPath)
            
            cell.backgroundColor = table_color
            let cell_img_text : UIImageView = UIImageView(frame: CGRectMake(0, 0, 375, 88.5))
            cell_img_text.image = UIImage(named: "adv_4")
            cell.addSubview(cell_img_text)
            
            return cell
        case 4:
            let cell = tableView.dequeueReusableCellWithIdentifier("adv_cell_5", forIndexPath: indexPath)
            
            cell.backgroundColor = table_color
            let cell_img_text : UIImageView = UIImageView(frame: CGRectMake(0, 0, 375, 88.5))
            cell_img_text.image = UIImage(named: "adv_5")
            cell.addSubview(cell_img_text)
            
            return cell
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("adv_cell_6", forIndexPath: indexPath)
            
            cell.backgroundColor = table_color
            let cell_img_text : UIImageView = UIImageView(frame: CGRectMake(0, 0, 375, 88.5))
            cell_img_text.image = UIImage(named: "adv_6")
            cell.addSubview(cell_img_text)
            
            return cell
        }
    }


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
