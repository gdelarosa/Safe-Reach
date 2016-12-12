//
//  HealthVC.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 12/11/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class HealthVC: UITableViewController {
   
    let imageList = ["amassi",
                     "ahf",
                     "apla",
                     "ascpasadena",
                     "asfoc",
                     "ahh",
                     "apait",
                     "apait",
                     "beingalive",
                     "bai",
                     "commonground",
                     "dappalmsprings",
                     "elawomenscenter",
                     "fap",
                     "fap",
                     "fap",
                     "fap",
                     "fap",
                     "lifegroup",
                     "lapublichealth",
                     "minorityap",
                     "reachla",
                     "redcircle",
                     "thewall",
                     "whittierrio",
                     "youthclinic"]
    
    let titleList = ["African American AIDS Support Services",
                     "AIDS Healthcare Foundation",
                     "AIDS Project Los Angeles",
                     "AIDS Service Center",
                     "AIDS Servcies Foundation Orange County",
                     "Alliance for Housing and Healing",
                     "Asian Pacific AIDS Intervention Team Garden Grove",
                     "Asian Pacific AIDS Intervention Team Los Angeles",
                     "Being Alive People with HIV/AIDS Action Coalition",
                     "Black AIDS Institute",
                     "Common Ground",
                     "Desert AIDS Project",
                     "East Los Angeles Women's Center",
                     "Foothill AIDS Project Claremont",
                     "Foothill AIDS Project Hesperia",
                     "Foothill AIDS Project Pasadena",
                     "Foothill AIDS Project Riverside",
                     "Foothill AIDS Project San Bernardino",
                     "Life Group Los Angeles",
                     "Los Angeles Department of Public Health",
                     "Minority AIDS Project",
                     "Reach Los Angeles",
                     "Red Circle Project",
                     "The Wall Las Memorias Project",
                     "Transgender Youth Clinic",
                     "Whittier Rio Hondo AIDS Project"]
    
    let descriptionList =
        ["Provides opportunity for diverse people of African descent.",
         "Free HIV/STD checking for men at the AHF's Men's Wellness Center",
         "Leadership in prevention, advocacy, and service.",
         "AIDS services.",
         "AIDS support services for PWAs living below the poverty line.",
         "Formerly Long Beach AIDS Foundation.",
         "AIDS services. Sponsors social group for GLBT Asian people.",
         "AIDS prevention, education, and outreach to the Asian community.",
         "AIDS support services.",
         "Education, prevention, and outreach to the black community.",
         "AIDS/HIV Services",
         "AIDS services.",
         "AIDS and domestic violence services to Latina women.",
         "AIDS/HIV services",
         "AIDS/HIV services",
         "AIDS/HIV services",
         "AIDS/HIV services",
         "AIDS/HIV services",
         "AIDS support services",
         "Education, outreach, and public policy",
         "Support services and education for African American and Latino PWA's.",
         "To motivate LGBT people of color, ages 16-29, to increase self-care by providing social and sexual health services through an empowering community engagement process, employing the visual and performing arts.",
         "The only HIV prevention program in Los Angeles County that specifically provides services to the Native American /Alaska Native Community.",
         "The Wall-Las Memorias Project is a community health and wellness organization dedicated to serving Latino, LGBT and other underserved populations through advocacy, education and building the next generation of leadership.",
         "The Center for Transyouth Health and Development promotes healthy futures for transyouth by providing services, research, training and capacity building that is developmentally informed, affirmative, compassionate and holistic for gender non-conforming children and transyouth.",
         "AIDS services"]
    
    
    
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
        
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Health") as! TableViewCell
        cell.healthTitle.text = titleList[(indexPath as NSIndexPath).row]
        cell.healthDescription.text = descriptionList[(indexPath as NSIndexPath).row]
        let imageName = UIImage(named: imageList[(indexPath as NSIndexPath).row])
        cell.healthImage.image = imageName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // store information into string before push to detail view
        if (segue.identifier == "HealthDetail")
        {
            // reference detailVC in this vc
            let dvc = segue.destination as! HealthDetailVC
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
