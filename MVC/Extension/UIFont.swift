//
//  UIFont.swift
//  MVC
//
//  Created by pimac006 on 10/07/17.
//  Copyright © 2017 pimac006. All rights reserved.
//

import UIKit

extension UIFont {
    
    struct AppFontName
    {
        static let Font_Bold = ""
        static let Font_Regular = ""
        static let Font_SemiBold = ""
        static let Font_Light = ""
    }
    
    // MARK:SYSTEM FONT
    
    class func Font_system(_fontSize:CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize:PROPORTIONAL_FONT_SIZE(_fontsize:_fontSize))
    }
    
    class func Font_system_bold(_fontSize:CGFloat) -> UIFont {
        return UIFont.boldSystemFont(ofSize: PROPORTIONAL_FONT_SIZE(_fontsize:_fontSize))
    }
    
    class func Font_system_ltalic(_fontSize:CGFloat) -> UIFont {
        return UIFont.italicSystemFont(ofSize:PROPORTIONAL_FONT_SIZE(_fontsize:_fontSize))
    }
    
    // MARK:CUSTOM FONT
    
    class func Font_Custom_Bold(_fontSize:CGFloat) -> UIFont {
        return UIFont(name: AppFontName.Font_Bold, size: PROPORTIONAL_FONT_SIZE(_fontsize: _fontSize))!
    }
    
    class func Font_Custom_Regular(_fontSize:CGFloat) -> UIFont {
        return UIFont(name: AppFontName.Font_Regular, size: PROPORTIONAL_FONT_SIZE(_fontsize: _fontSize))!
    }
    
    class func Font_custom_SemiBold(_fontSize:CGFloat) -> UIFont {
        return UIFont(name: AppFontName.Font_SemiBold, size: PROPORTIONAL_FONT_SIZE(_fontsize: _fontSize))!
    }
    
    class func Font_custom_Light(_fontSize:CGFloat) -> UIFont {
        return UIFont(name: AppFontName.Font_Light, size:PROPORTIONAL_FONT_SIZE(_fontsize: _fontSize) )!
    }
    
    
    // MARK: PROPORTIONAL SIZES 
    
    class func PROPORTIONAL_FONT_SIZE(_fontsize:CGFloat) -> CGFloat
    {
        var newfontSize = UIScreen.main.bounds.size.height * (_fontsize/568.0) 
        
        if UIScreen.main.bounds.size.height < 500
        {
            newfontSize = UIScreen.main.bounds.size.height * (_fontsize/480.0)
        }
        
        return newfontSize
    }

}
