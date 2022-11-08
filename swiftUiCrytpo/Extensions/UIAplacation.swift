//
//  UIAplacation.swift
//  swiftUiCrytpo
//
//  Created by pc on 28/10/22.
//

import Foundation
import SwiftUI


extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
