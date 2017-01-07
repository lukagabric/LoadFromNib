//
//  LoadFromNib+Extension.swift
//  LoadFromNib
//
//  Created by Luka Gabric on 06/01/2017.
//  Copyright © 2017 lukagabric.com. All rights reserved.
//

import Foundation
import UIKit

func lg_loadFromNib<T: NSObject>(name: String? = nil) -> T {
    let nibName = name ?? String(describing: T.self)
    let nibObjects = UINib(nibName: nibName, bundle: nil).instantiate(withOwner: nil, options: nil) as! [NSObject]
    
    for object in nibObjects {
        if type(of: object) == T.self {
            return object as! T
        }
    }
    
    abort()
}
