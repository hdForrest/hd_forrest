//
//  Begin_TableViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 16..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class Begin_TableViewController: UITableViewController
{
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
    {
        cell.backgroundColor = UIColor.clearColor()
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
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
        return 6
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 80.0
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        switch indexPath.row
        {
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("begin_cell_1", forIndexPath: indexPath)
            
            cell.backgroundColor = real_back_color
            let cell_img_text : UIImageView = UIImageView(frame: CGRectMake(60, 0, 315, 80))
            cell_img_text.image = UIImage(named: "begin_text1~4")
            cell.addSubview(cell_img_text)
            
            let cell_img_arrow : UIImageView = UIImageView(frame: CGRectMake(0, 0, 61, 80))
            cell_img_arrow.image = UIImage(named: "begin_small1~4")
            cell.addSubview(cell_img_arrow)
            
            return cell/*
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_2", forIndexPath: indexPath)
            
            cell.backgroundColor = real_back_color
            let cell_img : UIImageView = UIImageView(frame: CGRectMake(10, 10, 350, 260))
            cell_img.image = UIImage(named: "review2")
            cell.addSubview(cell_img)
            return cell
        case 2:
            let cell = tableView.dequeueReusableCellWithIdentifier("Review_LabelCell_3", forIndexPath: indexPath)
            
            cell.backgroundColor = real_back_color
            let cell_img : UIImageView = UIImageView(frame: CGRectMake(10, 10, 350, 260))
            cell_img.image = UIImage(named: "review3")
            cell.addSubview(cell_img)
            return cell*/
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("begin_cell_6", forIndexPath: indexPath)
            
            let cell_img_text : UIImageView = UIImageView(frame: CGRectMake(40, 0, 280, 66))
            cell_img_text.image = UIImage(named: "begin_text23~26")
            cell.addSubview(cell_img_text)
            
            let cell_img_arrow : UIImageView = UIImageView(frame: CGRectMake(0, 0, 40, 66))
            cell_img_arrow.image = UIImage(named: "begin_small23~26")
            cell.addSubview(cell_img_arrow)
            return cell
        }
    }


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
