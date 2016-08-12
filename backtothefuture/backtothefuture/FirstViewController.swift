//
//  FirstViewController.swift
//  backtothefuture
//
//  Created by Gibbonsoft Limited on 09/08/2016.
//  Copyright © 2016 feliun. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let year = Utilities().getCurrentYear()
        label1.text = Utilities().getLetterAtIndex(str: year, location: 0)
        label2.text = Utilities().getLetterAtIndex(str: year, location: 1)
        label3.text = Utilities().getLetterAtIndex(str: year, location: 2)
        label4.text = Utilities().getLetterAtIndex(str: year, location: 3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

