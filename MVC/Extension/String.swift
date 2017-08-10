//
//  String.swift
//  MVC
//
//  Created by pimac006 on 10/07/17.
//  Copyright © 2017 pimac006. All rights reserved.
//

import UIKit

extension String {
    
    func trimmed() -> String{
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func Legnth(_ string:String) -> NSInteger {
        return string.characters.count
    }
    
}

