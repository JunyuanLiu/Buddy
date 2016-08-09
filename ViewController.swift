//
//  ViewController.swift
//  Linder_forTest_1
//
//  Created by Kop Liu on 6/08/2016.
//  Copyright © 2016 Liu Junyuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//TODO:username gonna be as a parameter for next screen
    @IBOutlet weak var usernameSection: UITextField!
//TODO:password gonna be star marks
    @IBOutlet weak var passwordSection: UITextField!

    @IBOutlet weak var nextScreen: UIButton!

}

