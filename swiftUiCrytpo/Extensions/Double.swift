//
//  Double.swift
//  swiftUiCrytpo
//
//  Created by pc on 25/10/22.
//

import Foundation


extension Double {
    
    ///Converts a Double into a Currency with 2  decimal places
    /// ```
    /// Convert = 1234.56 to $1,234.56
    /// ```
    
    private var currencyForrmatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current // <- default value
        formatter.currencyCode = "usd" // <- change currecy
        formatter.currencySymbol = "$" // <- change currecy symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    ///Converts a Double into a Currency as a String with 2 decimal places
    /// ```
    /// Convert = 1234.56 to "$1,234.56"
    /// ```
    
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyForrmatter2.string(from: number) ?? "$0.00"
    }
    
    ///Converts a Double into string representation
    /// ```
    /// Convert = 1.23456 to "1.23"
    /// ```
    
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    
    ///Converts a Double into string representation with percet symbol
    /// ```
    /// Convert = 1.23456 to "1.23%"
    /// ```
    
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
    
    /// Convert a Double to a String with K, M, Bn, Tr abbreviations.
        ///

        /// Convert 12 to 12.00
        /// Convert 1234 to 1.23K
        /// Convert 123456 to 123.45K
        /// Convert 12345678 to 12.34M
        /// Convert 1234567890 to 1.23Bn
        /// Convert 123456789012 to 123.45Bn
        /// Convert 12345678901234 to 12.34Tr
        ///
    func formattedWithAbbreviations(currency: String) -> String {
            let num = abs(Double(self))
            let sign = (self < 0) ? "-" : ""

            switch num {
            case 1_000_000_000_000...:
                let formatted = num / 1_000_000_000_000
                let stringFormatted = formatted.asNumberString()
                return "\(currency)\(sign)\(stringFormatted)Tr"
            case 1_000_000_000...:
                let formatted = num / 1_000_000_000
                let stringFormatted = formatted.asNumberString()
                return "\(currency)\(sign)\(stringFormatted)Bn"
            case 1_000_000...:
                let formatted = num / 1_000_000
                let stringFormatted = formatted.asNumberString()
                return "\(currency)\(sign)\(stringFormatted)M"
            case 1_000...:
                let formatted = num / 1_000
                let stringFormatted = formatted.asNumberString()
                return "\(currency)\(sign)\(stringFormatted)K"
            case 0...:
                return "\(currency)\(sign)\(self.asNumberString())"

            default:
                return "\(currency)\(sign)\(self)"
            }
        }
    
    
}
