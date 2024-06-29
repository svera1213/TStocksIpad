//
//  NotificationView.swift
//  TStocksIpad
//
//  Created by Santiago Vera Yanez on 1/28/24.
//

import SwiftUI

struct NotificationView: View {
  var name: String
  
  var body: some View {
    Text("You are in Notification View")
      .font(.largeTitle)
      .foregroundStyle(.white)
      .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      .background(.purple)
  }
}

extension NotificationView: BaseProtocol {
  func logMessage() {
    print("You are in Notification View under \(name)")
  }
  
}
