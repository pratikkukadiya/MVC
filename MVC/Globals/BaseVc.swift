//
//  BaseVc.swift
//  MVC
//
//  Created by pimac006 on 10/08/17.
//  Copyright © 2017 pimac006. All rights reserved.
//

import UIKit

class BaseVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    func AppDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }

}
