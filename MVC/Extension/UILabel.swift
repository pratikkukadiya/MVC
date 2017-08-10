//
//  UILabel.swift
//  MVC
//
//  Created by pimac006 on 10/07/17.
//  Copyright © 2017 pimac006. All rights reserved.
//

import UIKit


extension UILabel{
    
    func setRadious(Radious:CGFloat) {
        self.layer.cornerRadius = Radious
        self.layer.masksToBounds = true
    }
    
}
