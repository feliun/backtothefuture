//
//  Utilities.swift
//  backtothefuture
//
//  Created by Gibbonsoft Limited on 12/08/2016.
//  Copyright © 2016 feliun. All rights reserved.
//

import Foundation

class Utilities {

    func getCurrentYear () -> String {
        let date = Date()
        let calendar = Calendar.current
        return String(calendar.component(.year, from: date))
    }
    
    func getLetterAtIndex (str: String, location: Int) -> String {
        let index = str.index(str.startIndex, offsetBy: location)
        return String(str[index])
    }

}
