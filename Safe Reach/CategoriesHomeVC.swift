//
//  CategoriesHomeVC.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 1/8/17.
//  Copyright © 2017 Gina De La Rosa. All rights reserved.
//

import UIKit

class CategoriesHomeVC: UIViewController {

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

    
    

    

}
