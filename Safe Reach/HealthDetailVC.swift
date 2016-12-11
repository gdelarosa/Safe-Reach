//
//  HealthDetailVC.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 12/11/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class HealthDetailVC: UIViewController {

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
        
        if detailTitle.text == "LGBT Center Los Angeles"
        {
            address.text = "1625 N. Schrader Blvd. Los Angeles, CA 90028"
            phoneNumber.text = "323-993-7400"
            website.text = "https://lalgbtcenter.org/"
            hours.text = "M-F 8am-8pm"
        }
        if detailTitle.text == "LGBT Center West Hollywood"
        {
            address.text = "8745 Santa Monica Blvd. 2nd Floor, West Hollywood, CA 90069"
            phoneNumber.text = "323-957-5280"
            website.text = "https://lalgbtcenter.org/"
            hours.text = "M-F 11am - 2pm, 4pm-7pm"
        }
        if detailTitle.text == "Gay and Lesbian Chamber of Commerce"
        {
            address.text = "8424 Santa Monica Blvd. West Hollywood, CA 90069"
            phoneNumber.text = "323-570-4697"
            website.text = "www.laglcc.org"
            hours.text = "Call for hours"
        }
        if detailTitle.text == "The OutReach Center"
        {
            address.text = "44845 Cedar Ave. Lancaster, CA 923534"
            phoneNumber.text = "661-927-7433"
            website.text = "www.outreachcenterav.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "LGBTQ Center Long Beach"
        {
            address.text = "2017 E. 4th St. Long Beach, CA 90814"
            phoneNumber.text = "562-434-4455"
            website.text = "www.centerlb.org"
            hours.text = "M-Sat 10am-9pm"
        }
        if detailTitle.text == "The South Bay LGBT Center"
        {
            address.text = "16610 Crenshaw Blvd. Torrance, CA 90504"
            phoneNumber.text = "310-328-6550"
            website.text = "www.southbaycenter.org"
            hours.text = "M 7pm-9pm, T 4pm-10pm, F 7pm-10pm, TH 4:30pm-10pm, Sat 1pm-6pm"
        }
        if detailTitle.text == "San Fernando Valley LGBT Center"
        {
            address.text = "11243 Glenoaks Blvd. #11, Pacoima, CA 91331"
            phoneNumber.text = "818-890-5428"
            website.text = "www.sfvlgbtcenter.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "LGBT Center of Orange County"
        {
            address.text = "1605 N. Spurgeon St. Santa Ana, CA 92701"
            phoneNumber.text = "714-953-5428"
            website.text = "www.lgbtcenteroc.org"
            hours.text = "M-F 10am-9pm Sat 10am-4pm"
        }
        if detailTitle.text == "Inland Empire Community Center"
        {
            address.text = "6864 Indiana Ave. Suite #104, Riverside, CA 92506"
            phoneNumber.text = "951-293-4528"
            website.text = "www.ie-lgbt.com"
            hours.text = "Call for hours"
        }
        if detailTitle.text == "LGBT Center of the Desert"
        {
            address.text = "1301 North Palm Canyon Dr. 3rd Floor, Palm Springs, CA 92262"
            phoneNumber.text = "760-416-7790"
            website.text = "www.thecenterps.org"
            hours.text = "M-F 8:30am-4:30pm"
        }
        if detailTitle.text == "LGBT Center San Diego"
        {
            address.text = "3909 Centre St., San Diego, CA 92103"
            phoneNumber.text = "619-692-2077"
            website.text = "www.thecentersd.org"
            hours.text = "M-Th 9am-9pm, F 9am-5pm"
        }
        if detailTitle.text == "North County LGBTQ Resource Center"
        {
            address.text = "3220 Mission Ave. #2, Oceanside, CA 92058"
            phoneNumber.text = "760-994-1690"
            website.text = "www.ncresourcecenter.org"
            hours.text = "M-F 12pm-8pm, Sat 10am-6pm"
        }
        
    }

}
