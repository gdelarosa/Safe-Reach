//
//  APIManager.swift
//  Safe Reach
//
//  Created by Gina De La Rosa on 11/19/16.
//  Copyright © 2016 Gina De La Rosa All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

typealias Callback = (success: (JSON?) -> Void, failure: (Any?) -> Void)

class APIManager {
    
    static let sharedInstance : APIManager = APIManager()
    private let authParams : [String : String] = ["sign" : "true", "key" :  "654899767a293341d4d5f6f1d264b"]
    
    private init(){}
    
    func getNearbyEvents(params: [String: String], callback: Callback) {
        var parameters = params
        for k in authParams.keys {
            parameters[k] = authParams[k]
        }
        do {
            let url = try "https://api.meetup.com/2/events?&sign=true&photo-host=public&group_urlname=GayandLesbian&page=20&key=654899767a293341d4d5f6f1d264b".asURL()
            
            Alamofire.request(url, method: .get, parameters: parameters, headers: nil).responseJSON {
                response in
                switch response.result {
                case .success(let data):
                    callback.success(JSON(data))
                case .failure(let error):
                    callback.failure(error)
                }
            }
        } catch {
            callback.failure(nil)
        }
        
    }

}
