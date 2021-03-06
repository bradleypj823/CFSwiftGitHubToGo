//
//  StringExtension.swift
//  CFSwiftGitHubToGo
//
//  Created by Bradley Johnson on 9/26/14.
//  Copyright (c) 2014 Brad Johnson. All rights reserved.
//

import Foundation

extension String {
    
    func validate() -> Bool {
        
            let regex = NSRegularExpression(pattern: "[^0-9a-zA-Z]", options: nil, error: nil)
            let match = regex?.numberOfMatchesInString(self, options: nil, range: NSRange(location:0, length: countElements(self)))
            if match > 0 {
                return false
            }
            return true
    }
    
}