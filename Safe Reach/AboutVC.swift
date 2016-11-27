//
//  AboutVC.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 11/20/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit
import MessageUI

class AboutVC: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Navigation Controller UI
        let imageView = UIImageView(image: UIImage(named: "Triangle"))
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 30))
        imageView.frame = titleView.bounds
        titleView.addSubview(imageView)
        self.navigationItem.titleView = titleView
    }

    @IBAction func website(_ sender: AnyObject) {
        if let url = URL(string: "http://www.safereachapp.com/") {
            UIApplication.shared.open(url, options: [:])
        }
    }
 
    @IBAction func email(_ sender: AnyObject) {
        let toRecipients = ["safereachapp@gmail.com"]
        let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setToRecipients(toRecipients)
        mc.setSubject("Safe Reach App Inquiry")
        self.present(mc, animated: true, completion: nil)

    }
 
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result.rawValue {
        case MFMailComposeResult.cancelled.rawValue:
            print("Cancelled")
        case MFMailComposeResult.failed.rawValue:
            print("Failed")
        case MFMailComposeResult.saved.rawValue:
            print("Saved")
        case MFMailComposeResult.sent.rawValue:
            print("Sent")
        default:
            break
        }
        self.dismiss(animated: true, completion: nil)
    }

}
