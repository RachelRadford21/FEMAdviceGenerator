//
//  Extensions.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import Foundation
import SwiftUI


///MARK:
/// An extension for custom colors provided by Front End Mentor.

extension Color {
//   Primary:
//    - Light Cyan: hsl(193, 38%, 86%)
//    - Neon Green: hsl(150, 100%, 66%) -> i used 77%        brightness, 88% sat
    static let lightCyan = Color(#colorLiteral(red: 0.5969958305, green: 0.8268129826, blue: 0.8850031495, alpha: 1))
    static let neonGreen = Color(#colorLiteral(red: 0.09209052157, green: 0.7680741374, blue: 0.4855347713, alpha: 1))
    
//   Neutral:
//    - Grayish Blue: hsl(217, 19%, 38%)
//    - Dark Grayish Blue: hsl(217, 19%, 24%)
//    - Dark Blue: hsl(218, 23%, 16%)
    
    static let grayBlue = Color(#colorLiteral(red: 0.3781223297, green: 0.4085387588, blue: 0.4525399804, alpha: 1))
    static let darkGrayBlue = Color(#colorLiteral(red: 0.2511393428, green: 0.273085773, blue: 0.3048143983, alpha: 1))
    static let darkBlue = Color(#colorLiteral(red: 0.1628813446, green: 0.1814428568, blue: 0.2106072009, alpha: 1))
}

///Mark:
/// An extension for the custom font provided by Front End Mentor

extension Font {
    static var manrope: Font {
        Font.custom("Manrope-Regular", size: 0)
    }
}
