//
//  BaseView.swift
//  TStocksIpad
//
//  Created by Santiago Vera Yanez on 1/28/24.
//

import SwiftUI

protocol BaseProtocol {
  var name: String { get }
  func logMessage()
}

struct BaseView: View {
  var name: String
  
  var body: some View {
    Text("You are in view: \(name)")
      .font(.largeTitle)
      .foregroundStyle(.white)
      .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      .background(.black)
  }
}

extension BaseView: BaseProtocol {
  func logMessage() {
    print("You are in view: \(name)")
  }
}
