//
//  HapticManager.swift
//  swiftUiCrytpo
//
//  Created by pc on 07/11/22.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator  = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
