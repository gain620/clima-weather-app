//
//  ApiKeys.swift
//  Clima
//
//  Created by Gain Chang on 29/03/2019.
//  Copyright © 2019 Gain Chang. All rights reserved.
//

import Foundation

func valueForAPIKey(named keyName : String) -> String {
    guard let filePath = Bundle.main.path(forResource: "Keys", ofType: "plist") else {
        return "NO MATCHING FILE FOUND!!!"
    }
    guard let plist = NSDictionary(contentsOfFile: filePath) else {
        return "FILE READ ERROR"
    }
    
    let value = plist.object(forKey: keyName) as! String
    return value
}
