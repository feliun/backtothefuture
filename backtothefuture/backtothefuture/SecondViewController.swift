//
//  SecondViewController.swift
//  backtothefuture
//
//  Created by Gibbonsoft Limited on 09/08/2016.
//  Copyright © 2016 feliun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    let utilities = Utilities()
    
    @IBAction func ButtonClicked(_ sender: UIButton) {
        let year = utilities.getRandomYear()
        label1.text = utilities.getLetterAtIndex(str: year, location: 0)
        label2.text = utilities.getLetterAtIndex(str: year, location: 1)
        label3.text = utilities.getLetterAtIndex(str: year, location: 2)
        label4.text = utilities.getLetterAtIndex(str: year, location: 3)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

