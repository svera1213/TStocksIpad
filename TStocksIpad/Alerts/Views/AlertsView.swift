//
//  AlertsView.swift
//  TStocksIpad
//
//  Created by Santiago Vera Yanez on 1/28/24.
//

import SwiftUI

struct AlertsView: View {
  var name: String
  
  var body: some View {
    Text("You are in Alerts View")
      .font(.largeTitle)
      .foregroundStyle(.white)
      .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      .background(.gray)
  }
}

extension AlertsView: BaseProtocol {
  func logMessage() {
    print("You are in Alerts View under \(name)")
  }
}
