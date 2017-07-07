//
//  UIColor.swift
//  MVC
//
//  Created by pimac006 on 07/07/17.
//  Copyright © 2017 pimac006. All rights reserved.
//

import UIKit

extension UIColor
{
    
    // MARK: Application Color
    
    struct AppColor
    {
        static let NavigationBar = UIColor.RGB(R: 206.0,G: 32,B: 32,A: 1)
        static let FootColor = UIColor.RGB(R: 206.0, G: 32, B: 32, A: 1)
    }
    
    
    // MARK: RGB
    
    class func RGB(R:CGFloat,G:CGFloat,B:CGFloat,A:CGFloat) -> UIColor {
        return UIColor(red: R/255.0, green: G/255.0, blue: B/255.0, alpha:A)
    }
    
    // MARK: HEX To RGB
    
    class func hexStringToRgb (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
