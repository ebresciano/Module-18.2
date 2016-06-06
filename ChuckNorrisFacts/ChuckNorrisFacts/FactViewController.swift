//
//  FactViewController.swift
//  ChuckNorrisFacts
//
//  Created by Eva Marie Bresciano on 6/6/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import UIKit

class FactViewController: UIViewController {
    
    @IBOutlet weak var factLabel: UILabel!

    @IBAction func factButtonTapped(sender: AnyObject) {
        FactController.getFact { (fact) in
            self.factLabel.text = fact?.text
        }
    }
}