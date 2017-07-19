//
//  ViewController.swift
//  LineRow
//
//  Created by Vyacheslav Petrukhin on 07/19/2017.
//  Copyright (c) 2017 Vyacheslav Petrukhin. All rights reserved.
//

import UIKit
import Eureka
import LineRow

class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        form +++ LineRow() {
            $0.value = .black
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

