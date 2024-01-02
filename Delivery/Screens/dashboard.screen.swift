//
//  dashboard.screen.swift
//  Delivery
//
//  Created by The Scalers on 01/01/24.
//

import SwiftUI

struct dashboard_screen: View {
    @State var selectedScreen = 1;
    var body: some View {
        TabView(selection: $selectedScreen) {
            category_screen().tabItem { Image(systemName: "square.grid.2x2")
            }.tag(1)
            Text("Tab Content 2").tabItem {  Image(systemName: "cart")
            }.tag(2)
            Text("Tab Content 3")
                .badge("!").tabItem {  Image(systemName: "person")
            }.tag(3)
        }.accentColor(.main)
    }
}

#Preview {
    dashboard_screen()
}
