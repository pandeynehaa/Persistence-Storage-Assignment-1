//
//  Date.swift
//  Todo_app
//
//  Created by ek-mac-02 on 21/09/2022.
//

import Foundation
extension Date {
    
    func dateToString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
       return formatter.string(from: self)
    }
}
