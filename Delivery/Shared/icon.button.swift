//
//  icon.button.shared.swift
//  Delivery
//
//  Created by The Scalers on 02/01/24.
//

import SwiftUI

struct icon_button: View {
    var iconName: String
    var iconColor: Color
    var buttonBackground: Color = .clear
    var isOutlined: Bool = false
    var borderColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(borderColor, lineWidth: isOutlined ? 1 : 0)
                .background(buttonBackground)
                .cornerRadius(10)
            Image(systemName: iconName)
                .padding()
                .foregroundColor(iconColor)
        }
    }
}

#Preview {
    icon_button(iconName: "heart", iconColor: .borderPrimary, isOutlined: true,borderColor: .borderPrimary)
}
