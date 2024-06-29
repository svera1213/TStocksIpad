//
//  Colors.swift
//  Trendo
//
//  Created by Miguel Angel Valcarcel Mendivelso on 1/19/22.
//

import UIKit

extension UIColor {
  static let trendoGreen = UIColor(named: "TrendoGreen")
  static let trendoBlack = UIColor(named: "TrendoBlack")
  static let gray0 = UIColor(named: "Gray0")
  static let gray1 = UIColor(named: "Gray1")
  static let gray2 = UIColor(named: "Gray2")
  static let gray3 = UIColor(named: "Gray3")
  static let gray4 = UIColor(named: "Gray4")
  static let gray5 = UIColor(named: "Gray5")
  static let clearGray = UIColor(named: "ClearGray")
  static let darkGray1 = UIColor(named: "DarkGray1")
  static let darkGray2 = UIColor(named: "DarkGray2")
  static let trendoWhite = UIColor(named: "TrendoWhite")
  static let trendoRed = UIColor(named: "TrendoRed")
  static let trendoRed2 = UIColor(named: "TrendoRed2")
  static let trendoRed3 = UIColor(named: "TrendoRed3")
  static let trendoGreen2 = UIColor(named: "TrendoGreen2")
  static let trendoGreen4 = UIColor(named: "TrendoGreen4")
  static let typographyNotBlack = UIColor(named: "TypographyNotBlack")
  
  convenience init(hex: String) {
    var cString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    if cString.hasPrefix("#") {
      cString.remove(at: cString.startIndex)
    }
    guard cString.count == 6 else {
      self.init(white: 1, alpha: 1)
      return
    }
    var rgbValue: UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)
    self.init(
      red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
      green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
      blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
      alpha: 1
    )
  }
}
