//
//  CommunityVC.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 11/27/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class CommunityVC: UITableViewController {

    let imageList = ["home", "medical", "homeRed", "medicalGreen", "Triangle", "web"]
    let titleList = ["Bob", "LGBT Center Palm Springs", "LGBT Center San Diego", "LGBT Center Riverside", "Youth Center", "Center for Youth"]
    let descriptionList = ["Big Ears", "Fat Nose", "Small Toes", "Smelly Farts", "Loud Scream", "Slimy Boogers"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(image: UIImage(named: "Triangle"))
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 30))
        imageView.frame = titleView.bounds
        titleView.addSubview(imageView)
        self.navigationItem.titleView = titleView
    }
  
    // MARK: - Tableview
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        cell.cellTitle.text = titleList[(indexPath as NSIndexPath).row]
        cell.cellDescription.text = descriptionList[(indexPath as NSIndexPath).row]
        let imageName = UIImage(named: imageList[(indexPath as NSIndexPath).row])
        cell.cellImage.image = imageName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // store information into string before push to detail view
        if (segue.identifier == "DetailView")
        {
            // reference detailVC in this vc
            let dvc = segue.destination as! CommunityDetailVC
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
                let imageView = imageList[(indexPath as NSIndexPath).row] as String
                // now we reference objects in the dvc
                dvc.sentImageData = imageView
            }
        }
    }

}
