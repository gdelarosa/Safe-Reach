//
//  SpiritualVC.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 12/11/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class SpiritualVC: UITableViewController {

    let imageList = ["allsaints",
                     "ashram",
                     "beth",
                     "chapelofpeace",
                     "firstcong",
                     "mthollywood",
                     "muslimsfor",
                     "redlandsunited",
                     "sanb",
                     "stjames",
                     "unitarian",
                     "unity"]
    
    let titleList = ["All Saints Episcopal Church",
                     "Ashram West",
                     "Beth Chayim Chadashim",
                     "Chapel of Peace Christian Church",
                     "First Congregational Church of Riverside",
                     "Mt. Hollywood Congregational Church",
                     "Muslims for Progressive Values",
                     "Redlands United Church of Christ",
                     "San Bernardino United Church of Christ",
                     "St. James Episcopal Church",
                     "Unitarian Universalist Church of Riverside",
                     "Unity Fellowship of Christ Church Riverside"]
    let descriptionList =
        [" A lively, inclusive, and welcoming faith community that celebrates the presense of God in all of life's challenges.",
         "Gay centered Spiritual instruction and groups based on traditional Hindu Tantra.",
         "An inclusive community of progressive lesbian, gay, bisexual, transgender and heterosexual Jews, our families and friends.",
         "An open and affirming body of Christ. LGBTQA family. Located in the annex of Bethel Congregational UCC.",
         "We believe we have a lot to offer including meaningful worship, excellent programs, and a wonderful community of people who will walk with you in your journey of faith.",
         "An Open and Affirming congregation.",
         "GLBT inclusive Muslim voice.",
         "An inclusive community in Redlands.",
         "An inclusive church in San Bernardino.",
         "An inclusive church in Los Angeles.",
         "An inclusive church in Riverside.",
         "An inclusive church in Riverside."]
    
    
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
        
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Spiritual") as! TableViewCell
        cell.spiritTitle.text = titleList[(indexPath as NSIndexPath).row]
        cell.spiritDescription.text = descriptionList[(indexPath as NSIndexPath).row]
        let imageName = UIImage(named: imageList[(indexPath as NSIndexPath).row])
        cell.spiritImage.image = imageName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // store information into string before push to detail view
        if (segue.identifier == "SpiritualDetail")
        {
            // reference detailVC in this vc
            let dvc = segue.destination as! SpiritualDetailVC
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
