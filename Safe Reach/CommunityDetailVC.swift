//
//  CommunityDetailVC.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 11/27/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class CommunityDetailVC: UIViewController {

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
        
        if detailTitle.text == "Bob"
        {
            address.text = "2333 Los Angeles CA 92636"
            phoneNumber.text = "310-555-5555"
            website.text = "www.lgbtcenter.org"
            hours.text = "M-F 8am - 12pm"
        }
        if detailTitle.text == "LGBT Center Long Beach"
        {
            address.text = "2333 Los Angeles CA 92636"
            phoneNumber.text = "310-555-5555"
            website.text = "www.lgbtcenter.org"
            hours.text = "M-F 8am - 12pm"
        }
        if detailTitle.text == "LGBT Center Palm Springs"
        {
            address.text = "2333 Los Angeles CA 92636"
            phoneNumber.text = "310-555-5555"
            website.text = "www.lgbtcenter.org"
            hours.text = "M-F 8am - 12pm"
        }

    }

}
