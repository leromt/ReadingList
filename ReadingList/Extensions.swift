//
//  Extensions.swift
//  ReadingList
//
//  Created by Thomas Morel on 5/17/19.
//  Copyright © 2019 Thomas Morel. All rights reserved.
//
import UIKit

extension UIStoryboardSegue
{

    var realDestination: UIViewController? {
        guard let navController = destination as? UINavigationController else {
            return destination
        }
        return navController.children.first
    }

}
