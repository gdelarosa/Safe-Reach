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
        
        if detailTitle.text == "African American AIDS Support Services"
        {
            address.text = "160 S. La Brea Ave, Inglewood, CA 90301"
            phoneNumber.text = "310-419-1969"
            website.text = "www.amassi.com"
            hours.text = "Call for hours"
        }
        if detailTitle.text == "AIDS Healthcare Foundation"
        {
            address.text = "1710 N. La Brea Ave, Los Angeles, CA 90026"
            phoneNumber.text = "323-436-8900"
            website.text = "www.aidshealth.org"
            hours.text = "M-F 8:30am-5:30pm"
        }
        if detailTitle.text == "AIDS Project Los Angeles"
        {
            address.text = "611 S. Kingsley Drive Los Angeles, CA 90005"
            phoneNumber.text = "213-201-1600"
            website.text = "www.apla.org"
            hours.text = "Call for hours"
        }
        if detailTitle.text == "AIDS Service Center"
        {
            address.text = "837 S. Fair Oaks #204, Pasadena, CA 91105"
            phoneNumber.text = "626-441-8495"
            website.text = "www.aidsservicecenter.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "AIDS Servcies Foundation Orange County"
        {
            address.text = "17982 Sky Park Circle #J, Irvine, CA 92614"
            phoneNumber.text = "949-809-5700"
            website.text = "www.ocasf.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Alliance for Housing and Healing"
        {
            address.text = "825 Colorado Blvd #100, Los Angeles, CA 90041"
            phoneNumber.text = "323-344-4888"
            website.text = "www.alliancehh.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Asian Pacific AIDS Intervention Team Garden Grove"
        {
            address.text = "12900 Garden Grove Blvd #220, Garden Grove, CA 92843"
            phoneNumber.text = "714-636-1349"
            website.text = "www.apaitonline.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Asian Pacific AIDS Intervention Team Los Angeles"
        {
            address.text = "1730 W. Olympic Blvd #300, Los Angeles, CA 90015"
            phoneNumber.text = "213-375-3830"
            website.text = "www.apaitonline.org"
            hours.text = "M-F 9:30am-5:30pm"
        }
        if detailTitle.text == "Being Alive People with HIV/AIDS Action Coalition"
        {
            address.text = "7531 Santa Monica Blvd #100, West Hollywood, CA 90046"
            phoneNumber.text = "323-874-4322"
            website.text = "www.beingalivela.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Black AIDS Institute"
        {
            address.text = "1833 W. Eighth St #200, Los Angeles, CA 90057"
            phoneNumber.text = "213-353-3610"
            website.text = "www.blackaids.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Common Ground"
        {
            address.text = "2401 Lincoln Blvd, Santa Monica, CA 90405"
            phoneNumber.text = "310-314-5480"
            website.text = "www.commongroundwestside.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Desert AIDS Project"
        {
            address.text = "1695 N. Sunrise Way, Palm Springs, CA 92262"
            phoneNumber.text = "760-323-2118"
            website.text = "www.dessertaidsproject.org"
            hours.text = "M-F 8am-5pm"
        }
        if detailTitle.text == "East Los Angeles Women's Center"
        {
            address.text = "1255 S. Atlantic Blvd, Los Angeles, CA 90022"
            phoneNumber.text = "323-526-5819"
            website.text = "www.elawc.org"
            hours.text = "M-F 8:30am-6pm"
        }
        if detailTitle.text == "Foothill AIDS Project Claremont"
        {
            address.text = "233 W. Harrison Ave, Claremont, CA 91711"
            phoneNumber.text = "909-482-2066"
            website.text = "www.fapinfo.org"
            hours.text = "Call for hours"
        }
        if detailTitle.text == "Foothill AIDS Project Hesperia"
        {
            address.text = "16501 Walnut St., Hesperia, CA 92345"
            phoneNumber.text = "760-684-4368"
            website.text = "www.fapinfo.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Foothill AIDS Project Pasadena"
        {
            address.text = "1855 N. Fair Oaks Ave #130, Pasadena, CA 91103"
            phoneNumber.text = "626-710-4487"
            website.text = "www.fapinfo.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Foothill AIDS Project Riverside"
        {
            address.text = "3576 Arlington Ave #206, Riverside, CA 92506"
            phoneNumber.text = "951-742-7660"
            website.text = "www.fapinfo.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Foothill AIDS Project San Bernardino"
        {
            address.text = "364 Orange Show Lane, San Bernardino, CA 92408"
            phoneNumber.text = "909-884-2722"
            website.text = "www.fapinfo.org"
            hours.text = "M-F 9am-5pm"
        }
        if detailTitle.text == "Life Group Los Angeles"
        {
            address.text = "7985 Santa Monica Blvd #109-330, West Hollywood, CA 90046"
            phoneNumber.text = "888-208-8081"
            website.text = "www.thelifegroupla.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Los Angeles Department of Public Health"
        {
            address.text = "600 S. Commonewealth Ave. Tenth Floor, Los Angeles, CA 90005"
            phoneNumber.text = "213-351-8000"
            website.text = "www.lapublichealth.org/aids"
            hours.text = "M-F 8am-5pm"
        }
        if detailTitle.text == "Minority AIDS Project"
        {
            address.text = "5149 W. Jefferson Blvd, Los Angeles, CA 90016"
            phoneNumber.text = "323-936-4949"
            website.text = "www.minorityaidsproject.org"
            hours.text = "M-F 8:30am-5pm"
        }
        if detailTitle.text == "Reach Los Angeles"
        {
            address.text = "1400 E. Olympic Blvd #240, Los Angeles, CA 90021"
            phoneNumber.text = "213-622-1650"
            website.text = "www.reachla.org"
            hours.text = "M-F 11am-7pm, Sat by apt."
        }
        if detailTitle.text == "Red Circle Project"
        {
            address.text = "3741 S. La Brea Ave, Los Angeles, CA 90016"
            phoneNumber.text = "323-329-9905"
            website.text = "www.redcircleproject.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "The Wall Las Memorias Project"
        {
            address.text = "5619 Monte Vista St., Los Angeles, CA 90042"
            phoneNumber.text = "323-257-1056"
            website.text = "www.thewalllasmemorias.org"
            hours.text = "M-F 9am-5pm"
        }
        if detailTitle.text == "Transgender Youth Clinic"
        {
            address.text = "5000 Sunset Blvd 4th Floor, Los Angeles, CA 90027"
            phoneNumber.text = "323-361-5372"
            website.text = "www.transyouthla.com"
            hours.text = "Call for hours"
        }
        if detailTitle.text == "Whittier Rio Hondo AIDS Project"
        {
            address.text = "12401 Slauson Ave Unit G, Whittier, CA 90605"
            phoneNumber.text = "562-693-2247"
            website.text = ""
            hours.text = "M-F 12pm-7pm"
        }
        
    }

}
