//
//  Address.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 11/19/16.
//  Copyright © 2016 Gina De La Rosa All rights reserved.
//

import Foundation
import SwiftyJSON

struct Address : JSONable {
    let address : String
    let city : String
    let state : String
    
    init(address: String, city: String, state: String) {
        self.address = address
        self.city = city
        self.state = state
    }
    
    static func fromJSON(_ json: JSON) -> Address {
        let address = json["address_1"].stringValue
        let city = json["city"].stringValue
        let state = json["state"].stringValue
        return Address(address: address, city: city, state: state)
    }
}
