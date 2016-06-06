//
//  Fact.swift
//  ChuckNorrisFacts
//
//  Created by Eva Marie Bresciano on 6/6/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation

class Fact {
    
    let text: String
    
    init?(dictionary: [String:AnyObject]) {
        guard let text = dictionary["value"] as? String  else {
            return nil
        }
        self.text = text
    }
}
