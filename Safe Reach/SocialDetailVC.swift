//
//  SocialDetailVC.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 12/11/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class SocialDetailVC: UIViewController {

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
        
        if detailTitle.text == "Bienestar Coachella"
        {
            address.text = "53990 Enterprise Way, Coachella, CA 92236"
            phoneNumber.text = "760-398-3166"
            website.text = "www.bienestar.org"
            hours.text = "M-F 10am-7pm"
        }
        if detailTitle.text == "Bienestar El Monte"
        {
            address.text = "3131 Santa Anita Avenue, #109, El Monte, CA 91733"
            phoneNumber.text = "626-444-9453"
            website.text = "www.bienestar.org"
            hours.text = "M 8:30am-1pm, Tue,Thur 1pm-5:30pm"
        }
        if detailTitle.text == "Bienestar Hollywood"
        {
            address.text = "4955 Sunset Boulevard Los Angeles, CA 90027"
            phoneNumber.text = "323-660-9680"
            website.text = "www.bienestar.org"
            hours.text = "M-F 10am-7pm"
        }
        if detailTitle.text == "Bienestar Long Beach"
        {
            address.text = "1464 Cherry Avenue Long Beach, CA 90813"
            phoneNumber.text = "562-438-5800"
            website.text = "www.bienestar.org"
            hours.text = "M-F 10am-7pm"
        }
        if detailTitle.text == "Bienestar East Los Angeles"
        {
            address.text = "5326 E. Beverly Blvd, Los Angeles, CA 90022"
            phoneNumber.text = "323-727-7985"
            website.text = "www.bienestar.org"
            hours.text = "M-F 10am-7pm"
        }
        if detailTitle.text == "Bienestar Pomona"
        {
            address.text = "180 E. Mission Boulevard Pomona, CA 91766"
            phoneNumber.text = "909-397-7660"
            website.text = "wwww.bienestar.org"
            hours.text = "M-F 10am-7pm"
        }
        if detailTitle.text == "Bienestar San Fernando Valley"
        {
            address.text = "8134 Van Nuys Boulevard, #200 Panorama City, CA 91402"
            phoneNumber.text = "818-908-3820"
            website.text = "www.bienestar.org"
            hours.text = "M-F 10am-7pm."
        }
        if detailTitle.text == "Bienestar South Los Angeles"
        {
            address.text = "130 W Manchester Ave, Los Angeles, CA 90003"
            phoneNumber.text = "323-752-3100"
            website.text = "www.bienestar.org"
            hours.text = "M-F 10am-7pm"
        }
        if detailTitle.text == "Colors LGBTQ Youth Counseling Center"
        {
            address.text = "400 Corporate Pointe Culver City, CA 90230"
            phoneNumber.text = "323-953-5130"
            website.text = "www.colorsyouth.org"
            hours.text = "Call to schedule an appointment."
        }
        if detailTitle.text == "Covenant House"
        {
            address.text = "1325 North Western Ave, Hollywood CA 90027"
            phoneNumber.text = "323-461-3131"
            website.text = "www.covenanthousecalifornia.org"
            hours.text = "Open 24hrs."
        }
        if detailTitle.text == "Friends Community Center"
        {
            address.text = "1419 N La Brea, Los Angeles, CA 90028"
            phoneNumber.text = "323-463-1601"
            website.text = "www.friendscommunitycenter.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Friends of Project 10"
        {
            address.text = "115 W. California Boulevard, #116 Pasadena, CA 91105"
            phoneNumber.text = "626-577-4553"
            website.text = "www.friendsofproject10.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Gender Wellness of Los Angeles"
        {
            address.text = "11340 W. Olympic Boulevard, #265"
            phoneNumber.text = "310-441-0411"
            website.text = "www.genwell.org"
            hours.text = "M-F 10am-7pm"
        }
        if detailTitle.text == "Highland Annex and Youth Center"
        {
            address.text = "1220 N. Highland Ave. Los Angeles, CA 90038"
            phoneNumber.text = "323-860-2280"
            website.text = "www.lalgbtcenter.org"
            hours.text = "M-F 7:30am-5pm, Sat/Sun 7:30am-2pm"
        }
        if detailTitle.text == "Lambda Legal"
        {
            address.text = "4221 Wilshire Blvd, Suite 280, Los Angeles, CA 90010"
            phoneNumber.text = "213-382-7600"
            website.text = "www.lambdalegal.org"
            hours.text = "Call for hours."
        }
        if detailTitle.text == "Los Angeles Gender Center"
        {
            address.text = "1923 Westwood Boulevard, #2 Los Angeles, CA 90025"
            phoneNumber.text = "310-475-8880"
            website.text = "www.lagendercenter.com"
            hours.text = "Call for hours"
        }
        if detailTitle.text == "Los Angeles Youth"
        {
            address.text = "1853 Taft Ave. Los Angeles, CA"
            phoneNumber.text = "323-467-8466"
            website.text = "www.layn.org"
            hours.text = "Open 24hrs."
        }
        if detailTitle.text == "Mi Centro"
        {
            address.text = "553 S. Clarence St. Los Angeles, CA 90033"
            phoneNumber.text = "323-286-7224"
            website.text = "www.lalgbtcenter.org"
            hours.text = "M-F 9am-5pm"
        }
        if detailTitle.text == "My Friend's Place"
        {
            address.text = "5850 Hollywood Blvd, Los Angeles, CA 90028"
            phoneNumber.text = "323-908-0011"
            website.text = "www.myfriendsplace.org"
            hours.text = "M-F 9am-5:30pm"
        }
        if detailTitle.text == "Safe Place For Youth"
        {
            address.text = "2469 Lincoln Blvd. Venice, CA 90291"
            phoneNumber.text = "310-902-2283"
            website.text = "www.safeplaceforyouth.org"
            hours.text = "M-F 10am-5pm"
        }
        if detailTitle.text == "Triangle Square"
        {
            address.text = "1602 Ivar Ave. Los Angeles, CA 90028"
            phoneNumber.text = "323-466-4372"
            website.text = "www.triangelsquareapts.com"
            hours.text = "Call for hours"
        }
        if detailTitle.text == "The Village at Ed Gould Plaza"
        {
            address.text = "1125 N. McCadden Place Los Angeles, CA 90038"
            phoneNumber.text = "323-860-7302"
            website.text = "www.lalgbtcenter.org"
            hours.text = "M-F 6pm-10pm, Sat 9am-5pm"
        }
        
        
    }

}
