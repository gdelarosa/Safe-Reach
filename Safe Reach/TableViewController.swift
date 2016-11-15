//
//  TableViewController.swift
//  TableViewSwift
//
//  Created by Gina De La Rosa on 11/14/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    // create 3 arrays
   // let imageList = ["creature1", "creature2", "creature3", "creature4", "creature5", "creature6"]

    let titleList = ["LGBT Center", "LGBTQ LA", "Barry", "Brandon", "Boris", "Blake"]
    let descriptionList = ["Health Services", "Fat Nose", "Small Toes", "Smelly Farts", "Loud Scream", "Slimy Boogers"]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // allocate our cell
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        // get cell to equal list from array
        cell.cellTitle.text = titleList[(indexPath as NSIndexPath).row]
        cell.cellDescription.text = descriptionList[(indexPath as NSIndexPath).row]

//        let imageName = UIImage(named: imageList[(indexPath as NSIndexPath).row])
//        cell.cellImage.image = imageName

        return cell
    }


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


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // store information into string before push to detail view
        if (segue.identifier == "DetailView")
        {
            // reference detailVC in this vc
            let dvc = segue.destination as! DetailViewController
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                // convert to string to place in our sent data
                let title = titleList[(indexPath as NSIndexPath).row] as String
                // now we reference objects in the dvc
                dvc.sentTitleData = title

                // convert to string to place in our sent data
                let description = descriptionList[(indexPath as NSIndexPath).row] as String
                // now we reference objects in the dvc
                dvc.sentDescriptionData = description

                // convert to string to place in our sent data
//                let imageView = imageList[(indexPath as NSIndexPath).row] as String
//                // now we reference objects in the dvc
//                dvc.sentImageData = imageView
            }
        }









    }

}
