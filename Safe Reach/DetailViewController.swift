//
//  DetialViewController.swift
//  TableViewSwift
//
//  Created by Matt Deuschle on 1/8/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var detailImageView: UIImageView!

    @IBOutlet var detailTitle: UILabel!
    
    @IBOutlet var detailDescription: UILabel!

//    @IBOutlet var skill: UILabel!
//    @IBOutlet var eyeColor: UILabel!
//    @IBOutlet var hobby: UILabel!
//    @IBOutlet var weapon: UILabel!
//
    var sentTitleData:String!
    var sentDescriptionData:String!
    var sentImageData:String!


    override func viewDidLoad() {
        super.viewDidLoad()

        // place the 3 strings above in our 3 objects
        detailTitle.text = sentTitleData
        detailDescription.text = sentDescriptionData

        detailImageView.image = UIImage(named: sentImageData)


        if detailTitle.text == "LGBT Center"
        {
            
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
