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
    
    var timer = Timer()
    var utilities = Utilities()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let year = utilities.getCurrentYear()
        label1.text = utilities.getLetterAtIndex(str: year, location: 0)
        label2.text = utilities.getLetterAtIndex(str: year, location: 1)
        label3.text = utilities.getLetterAtIndex(str: year, location: 2)
        label4.text = utilities.getLetterAtIndex(str: year, location: 3)
        tick()
        
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.tick), userInfo: nil, repeats: true)
    }
    
    func tick () {
        timeLabel.text = utilities.getCurrentTime()
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut, animations: {
            self.view.alpha = 0.5
            }) { (true) in
                self.view.alpha = 1.0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

