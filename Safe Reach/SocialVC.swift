//
//  SocialVC.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 12/11/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class SocialVC: UITableViewController {

    let imageList = ["bienestar",
                     "bienestar",
                     "bienestar",
                     "bienestar",
                     "bienestar",
                     "bienestar",
                     "bienestar",
                     "bienestar",
                     "colors",
                     "covenant",
                     "friendscc",
                     "friendsproject",
                     "genderwell",
                     "youthcenter",
                     "lambda",
                     "gendercenter",
                     "layouth",
                     "micentro",
                     "myfriend",
                     "safeplace",
                     "trianglesquare",
                     "village"]
    
    let titleList = ["Bienestar Coachella",
                     "Bienestar El Monte",
                     "Bienestar Hollywood",
                     "Bienestar Long Beach",
                     "Bienestar East Los Angeles",
                     "Bienestar Pomona",
                     "Bienestar San Fernando Valley",
                     "Bienestar South Los Angeles",
                     "Colors LGBTQ Youth Counseling Center",
                     "Covenant House",
                     "Friends Community Center",
                     "Friends of Project 10",
                     "Gender Wellness of Los Angeles",
                     "Highland Annex and Youth Center",
                     "Lambda Legal",
                     "Los Angeles Gender Center",
                     "Los Angeles Youth",
                     "Mi Centro",
                     "My Friend's Place",
                     "Safe Place For Youth",
                     "Triangle Square",
                     "The Village at Ed Gould Plaza"]
    
    let descriptionList =
    ["BIENESTAR is a unique non-profit social service organization dedicated to positively impacting the health and well-being of the Latino community and other underserved communities in Southern California.",
     "BIENESTAR is a unique non-profit social service organization dedicated to positively impacting the health and well-being of the Latino community and other underserved communities in Southern California.",
     "BIENESTAR is a unique non-profit social service organization dedicated to positively impacting the health and well-being of the Latino community and other underserved communities in Southern California.",
     "BIENESTAR is a unique non-profit social service organization dedicated to positively impacting the health and well-being of the Latino community and other underserved communities in Southern California.",
     "BIENESTAR is a unique non-profit social service organization dedicated to positively impacting the health and well-being of the Latino community and other underserved communities in Southern California.",
     "BIENESTAR is a unique non-profit social service organization dedicated to positively impacting the health and well-being of the Latino community and other underserved communities in Southern California.",
     "BIENESTAR is a unique non-profit social service organization dedicated to positively impacting the health and well-being of the Latino community and other underserved communities in Southern California.",
     "BIENESTAR is a unique non-profit social service organization dedicated to positively impacting the health and well-being of the Latino community and other underserved communities in Southern California.",
         "Colors LGBTQ Youth Counseling Center provides free LGBTQ-affirmative counseling and psychotherapy services to youth under 25 and their families in the greater Los Angeles area.",
         "Covenant House California (CHC) is a non-profit agency whose mission is to reach out to at-risk homeless youth living on the streets and offer them hope and opportunities to turn their lives around.",
         "Provides services for and conducts research with substance-using gay and bisexual men, other men who have sex with men, and high-risk transgender women.",
         "Friends of Project 10 Inc. is a nonprofit that provides support and outreach to lesbian, gay, bisexual, transgender and questioning (LGBTQ) youth.",
         "A counseling practice devoted to working with clients — and their families — who are coping with all issues related to gender identity.",
         "Provides addiction recovery services, clothing, counseling, computer center, emergency overnight beds, employment assistance, food, GED program, HIV and STD testing, and showers, hate crime victim assistance, legal services, LifeWorks, RISE, Transgender Economic empowerment, and family services.",
         "The mission of Lambda Legal is to achieve full recognition of the civil rights of lesbians, gay men, bisexuals, transgender people and those with HIV through impact litigation, education and public policy work.",
         "Counseling and support for the LGBTQ+ community.",
         "The Los Angeles Youth mission is to empower abused, neglected and homeless adolescents to become self-sufficient.",
         "Provides legal and immigration services, public policy and community building, senior services, and transgender support services.",
         "My Friend’s Place assists and inspires homeless youth to build self-sufficient lives.",
         "Safe Place for Youth's mission is to inspire, nurture and empower the resilient human spirit of homeless youth by providing immediate and lasting solutions, one young person at a time.",
         "Triangle Square Apartments is the nation's first affordable lesbian, gay, bisexual and transgender (LGBT) housing development of private, individual apartment homes.",
         "Provides AIDS/LifeCycle, Conversation Groups/Meetings,  Cultural Arts and Education, Leadership LAB, Room/Facility Rentals, Senior Services, and Volunteer Resources."]
    
    
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
        
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Social") as! TableViewCell
        cell.socialTitle.text = titleList[(indexPath as NSIndexPath).row]
        cell.socialDescription.text = descriptionList[(indexPath as NSIndexPath).row]
        let imageName = UIImage(named: imageList[(indexPath as NSIndexPath).row])
        cell.socialImage.image = imageName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // store information into string before push to detail view
        if (segue.identifier == "SocialDetail")
        {
            // reference detailVC in this vc
            let dvc = segue.destination as! SocialDetailVC
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
