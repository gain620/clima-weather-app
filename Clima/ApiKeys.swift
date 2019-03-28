//
//  ApiKeys.swift
//  Clima
//
//  Created by Gain Chang on 29/03/2019.
//  Copyright © 2019 Gain Chang. All rights reserved.
//

import Foundation

func valueForAPIKey(named keyName : String) -> String {
    let filePath = Bundle.main.path(forResource: "Keys", ofType: "plist")
    let plist = NSDictionary(contentsOfFile: filePath!)
    let value = plist?.object(forKey: keyName) as! String
    return value
}
