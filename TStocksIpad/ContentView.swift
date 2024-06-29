//
//  ContentView.swift
//  TStocksIpad
//
//  Created by Santiago Vera Yanez on 1/25/24.
//

import SwiftUI

struct ContentView: View {
  @State private var columnVisibility = NavigationSplitViewVisibility.doubleColumn
  @State private var preferredColumn = NavigationSplitViewColumn.content
  
  private let options = [
    "Alerts",
    "Notifications",
    "Explore",
    "Screener",
    "Social",
    "Profile"
  ]
  enum MenuOptions: String, CaseIterable, Identifiable {
    var id: MenuOptions {
      self
    }
    
    case alerts = "Alerts"
    case notification = "Notifications"
    case explore = "Explore"
    case screener = "Screener"
    case social = "Social"
    case profile = "Profile"
  }
  
  var body: some View {
    AdaptiveStack {
      NavigationSplitView(columnVisibility: $columnVisibility) {
        List(MenuOptions.allCases) { option in
          NavigationLink(destination: self.getLinkDestination(optionName: option.rawValue), label: { Text(option.rawValue) })
        }
        .navigationTitle("Trendo Stocks")
        .navigationSplitViewColumnWidth(min: 100, ideal: 200, max: 300)
      } content: {
        VStack {
          Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
          Text("Hello, world. Select a view.")
            .padding()
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(.red)
        .navigationSplitViewColumnWidth(min: 500,ideal: 2000, max: 3000)
      } detail: {
        VStack {
          Button("Detail Only") {
            columnVisibility = .detailOnly
          }
          Button("Content and Detail") {
            columnVisibility = .doubleColumn
          }
          Button("Show All") {
            columnVisibility = .all
          }
        }
        .padding()
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(.darkGray1)
        .navigationSplitViewColumnWidth(2000)
      }
    }
  }
  
  func getLinkDestination(optionName: String) -> AnyView {
    let option = MenuOptions(rawValue: optionName)
    switch option {
    case .alerts:
      return AnyView(AlertsView(name: optionName))
    case .notification:
      return AnyView(NotificationView(name: optionName))
    default:
      return AnyView(BaseView(name: optionName))
    }
  }
}

#Preview {
  ContentView()
}
