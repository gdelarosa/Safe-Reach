//
//  SpiritualDetailVC.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 12/11/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class SpiritualDetailVC: UIViewController {
    
    @IBOutlet var detailImageView: UIImageView!
    @IBOutlet var detailTitle: UILabel!
    @IBOutlet var detailDescription: UILabel!
    
    @IBOutlet var address: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var website: UILabel!
    @IBOutlet var hours: UILabel!
    
    var sentTitleData:String!
    var sentDescriptionData:String!
    var sentImageData:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailTitle.text = sentTitleData
        detailDescription.text = sentDescriptionData
        detailImageView.image = UIImage(named: sentImageData)
        
        if detailTitle.text == "All Saints Episcopal Church"
        {
            address.text = "3847 Terracina Drive Riverside, CA 92506"
            phoneNumber.text = "951-683-8466"
            website.text = "http://www.allsaintsriverside.org/"
            hours.text = "Sunday 8am and 10am"
        }
        if detailTitle.text == "Ashram West"
        {
            address.text = "2070 Lyric Avenue Los Angeles, CA 90039"
            phoneNumber.text = "323-906-1744"
            website.text = "http://www.gaytantra.org/"
            hours.text = "Call for instruction or counseling"
        }
        if detailTitle.text == "Beth Chayim Chadashim"
        {
            address.text = "6090 W. Pico Boulevard Los Angeles, CA 90035"
            phoneNumber.text = "323-931-7023"
            website.text = "http://www.bcc-la.org/"
            hours.text = "Call for service hours"
        }
        if detailTitle.text == "Chapel of Peace Christian Church"
        {
            address.text = "535 N Euclid Ave, Ontario, CA"
            phoneNumber.text = "909-908-8405"
            website.text = " "
            hours.text = "Tuesday 7pm-8pm, Sunday 10:30-12pm"
        }
        if detailTitle.text == "First Congregational Church of Riverside"
        {
            address.text = "3504 Mission Inn Ave. Riverside, CA 92502"
            phoneNumber.text = "951-684-2494"
            website.text = "http://www.fccriverside.org/"
            hours.text = "Sunday 10am, second Sunday of month 5pm."
        }
        if detailTitle.text == "Mt. Hollywood Congregational Church"
        {
            address.text = "1733 N. New Hampshire Avenue Los Angeles, CA 90027"
            phoneNumber.text = "323-300-4066"
            website.text = "http://www.mounthollywood.org/"
            hours.text = "Call for service hours."
        }
        if detailTitle.text == "Muslims for Progressive Values"
        {
            address.text = "1626 N. Wilcox Avenue, #702 Los Angeles, CA 90028"
            phoneNumber.text = "323-696-2678"
            website.text = "https://mpvusa.org"
            hours.text = "Call for service hours."
        }
        if detailTitle.text == "Redlands United Church of Christ"
        {
            address.text = "168 Bellevue Ave. Redlands, CA 92373"
            phoneNumber.text = "909-793-3520"
            website.text = "http://uccredlands.org/"
            hours.text = "Call for service hours."
        }
        if detailTitle.text == "San Bernardino United Church of Christ"
        {
            address.text = "3041 N. Sierra Way San Bernardino, CA 92405"
            phoneNumber.text = "909-886-4911"
            website.text = "http://www.sbucc.org/"
            hours.text = "Call for service hours."
        }
        if detailTitle.text == "St. James Episcopal Church"
        {
            address.text = "3903 Wilshire Boulevard Los Angeles, CA 90010"
            phoneNumber.text = "213-388-3417"
            website.text = "https://stjla.org"
            hours.text = "Call for service hours."
        }
        if detailTitle.text == "Unitarian Universalist Church of Riverside"
        {
            address.text = "3909 Centre St., San Diego, CA 92103"
            phoneNumber.text = "951-686-6515"
            website.text = "www.uuchurchofriverside.org/"
            hours.text = "Sunday 10am Service."
        }
        if detailTitle.text == "Unity Fellowship of Christ Church Riverside"
        {
            address.text = "2025 Chicago Ave., Suite A20 Riverside, CA 92506"
            phoneNumber.text = "951-848-6070"
            website.text = "http://www.unityfellowshipchurch.org"
            hours.text = "Sunday 12pm Worship."
        }
        
        
    }

}
