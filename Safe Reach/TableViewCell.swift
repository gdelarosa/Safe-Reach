//
//  TableViewCell.swift
//  TableViewSwift
//
//  Created by Gina De La Rosa on 11/14/16.
//  Copyright © 2016 Gina De La Rosa. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var cellTitle: UILabel!
    @IBOutlet var cellDescription: UILabel!
    
    @IBOutlet var healthImage: UIImageView!
    @IBOutlet var healthTitle: UILabel!
    @IBOutlet var healthDescription: UILabel!
    
    @IBOutlet var socialImage: UIImageView!
    @IBOutlet var socialTitle: UILabel!
    @IBOutlet var socialDescription: UILabel!
    
    @IBOutlet var spiritImage: UIImageView!
    @IBOutlet var spiritTitle: UILabel!
    @IBOutlet var spiritDescription: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
