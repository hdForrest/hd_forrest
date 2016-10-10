//
//  TextSetTableViewController.swift
//  Forrest
//
//  Created by 이승환 on 2016. 10. 10..
//  Copyright © 2016년 이승환. All rights reserved.
//

import UIKit

class TextSetTableViewController: UITableViewController
{
    /* cell background color */
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
    {
        cell.backgroundColor = UIColor.clearColor()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        /* navigation bar set */
        self.navigationItem.title = "글자 크기"
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
        return 6
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Text_LabelCell", forIndexPath: indexPath)
        
        /* text set */
        cell.textLabel!.text = "선호하는 글자 크기로 조절됩니다"
        /* text color set */
        cell.textLabel!.textColor = background_color_state
        
        switch indexPath.row
        {
        case 0: cell.textLabel!.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 15)
        case 1: cell.textLabel!.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 20)
        case 2: cell.textLabel!.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 25)
        case 3: cell.textLabel!.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 30)
        case 4: cell.textLabel!.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 40)
        case 5: cell.textLabel!.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 50)
        default: break
        }
        
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        switch indexPath.row
        {
        case 0: text_size = 15
        case 1: text_size = 20
        case 2: text_size = 25
        case 3: text_size = 30
        case 4: text_size = 40
        case 5: text_size = 50
        default: break
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 80.0
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
