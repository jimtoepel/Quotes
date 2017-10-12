//
//  QuotesViewController.swift
//  Quotes
//
//  Created by Jim Toepel on 10/11/17.
//  Copyright © 2017 Jim Toepel. All rights reserved.
//

import Cocoa

class QuotesViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
}

extension QuotesViewController {
    // Storyboard instantiation
    static func freshController() -> QuotesViewController {
        // 1
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        // 2
        let identifier = NSStoryboard.SceneIdentifier(rawValue: "QuotesViewController")
        // 3
        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? QuotesViewController else {
            fatalError("Why cant I find QuotesViewContoller? - Check Main.storyboard")
        }
        return viewcontroller
    }
}
