//
//  String.swift
//  swiftUiCrytpo
//
//  Created by pc on 09/11/22.
//

import Foundation


extension String {
    
    
    var removingHTMLOccurance: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
        
    }
    
}
