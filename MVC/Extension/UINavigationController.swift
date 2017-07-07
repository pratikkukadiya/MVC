//
//  UINavigationController.swift
//  Naivation
//
//  Created by pimac006 on 07/07/17.
//  Copyright © 2017 pimac006. All rights reserved.
//

import UIKit


extension UINavigationController
{
    
    // MARK: Push Methods
    
    func pushTo(viewcontroller : String ,animated :Bool)
    {
        self.navigationController?.pushViewController((self.storyboard?.instantiateViewController(withIdentifier: viewcontroller))!, animated: animated)
    }
    
    // MARK: Pop Methods
    
    func pop(animated:Bool)
    {
        self.navigationController?.popViewController(animated: animated)
    }
    
    func popTo(viewcontroller : String,animated :Bool)
    {
        self.navigationController?.popToViewController((self.storyboard?.instantiateViewController(withIdentifier:viewcontroller))!, animated: animated)
    }
    
    func popToroot(animated:Bool)
    {
        self.navigationController?.popToRootViewController(animated: animated)
    }
    
    // MARK: Present & Dismiss Methods
    
    func present(viewcontroller : String,animated:Bool)
    {
        self.present((self.storyboard?.instantiateViewController(withIdentifier: viewcontroller))!, animated: animated, completion:nil)
        
    }
    
    func Dismiss(animated:Bool)
    {
        self.navigationController?.Dismiss(animated: animated)
    }
    
    
}
