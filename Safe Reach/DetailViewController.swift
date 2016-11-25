//
//  DetialViewController.swift
//  TableViewSwift
//
//  Created by Gina De La Rosa on 11/14/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  //  @IBOutlet var detailImageView: UIImageView!

    @IBOutlet var detailTitle: UILabel!
    
    @IBOutlet var detailDescription: UILabel!

//    @IBOutlet var skill: UILabel!
//    @IBOutlet var eyeColor: UILabel!
//    @IBOutlet var hobby: UILabel!
//    @IBOutlet var weapon: UILabel!
//
    @IBOutlet weak var address: UILabel!

    var sentTitleData:String!
    var sentDescriptionData:String!
  //  var sentImageData:String!

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Testing Data from JSON
       

        // place the 3 strings above in our 3 objects
        detailTitle.text = sentTitleData
        detailDescription.text = sentDescriptionData

       // detailImageView.image = UIImage(named: sentImageData)


        if detailTitle.text == "Community"
        {
            address.text = "12345 Los Angeles Blvd."
        }
//        if detailTitle.text == "Bill"
//        {
//            skill.text = "Fast"
//            eyeColor.text = "Blue"
//            hobby.text = "Farts"
//            weapon.text = "Guns"
//        }
//        if detailTitle.text == "Barry"
//        {
//            skill.text = "Fast"
//            eyeColor.text = "Blue"
//            hobby.text = "Cows"
//            weapon.text = "Guns"
//        }
//        if detailTitle.text == "Brandon"
//        {
//            skill.text = "Fast"
//            eyeColor.text = "Green"
//            hobby.text = "Farts"
//            weapon.text = "Guns"
//        }
//        if detailTitle.text == "Boris"
//        {
//            skill.text = "Fast"
//            eyeColor.text = "Blue"
//            hobby.text = "Farts"
//            weapon.text = "Stars"
//        }
//        if detailTitle.text == "Blake"
//        {
//            skill.text = "Slow"
//            eyeColor.text = "Blue"
//            hobby.text = "Farts"
//            weapon.text = "Guns"
//        }



    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
