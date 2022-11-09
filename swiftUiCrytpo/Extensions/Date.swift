//
//  Date.swift
//  swiftUiCrytpo
//
//  Created by pc on 09/11/22.
//

import Foundation


extension Date {
    
    // 2021-11-10T14:24:11.849Z
    
    init(coinGekcoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGekcoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String {
        return shortFormatter.string(from: self)
    }
    
}
