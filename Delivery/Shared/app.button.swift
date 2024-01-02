//
//  app.button.swift
//  Delivery
//
//  Created by The Scalers on 31/12/23.
//

import SwiftUI

struct app_button: View {
    let buttonName : String
    var onDataUpdate: (String) -> Void
    var isOutlined: Bool
    var backgroundColor: Color
    var borderColor: Color
    var textColor: Color
    var body: some View {
        Button(buttonName.uppercased()) {
            print("order now")
            onDataUpdate("noeww")
        }
        .padding(16.0)
        .frame(maxWidth: .infinity)
        .background(backgroundColor)
        .border(isOutlined ? /*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/ : Color.clear)
        .cornerRadius(8.0)
        .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
        .foregroundColor(textColor)
    }
}

#Preview {
    app_button(buttonName: "ini", onDataUpdate: { _ in print("")}, isOutlined: false, backgroundColor: .buttonPrimary, borderColor: Color.blue, textColor: Color.red)
}
