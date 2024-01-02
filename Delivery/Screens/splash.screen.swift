//
//  splash.screen.swift
//  Delivery
//
//  Created by The Scalers on 31/12/23.
//

import SwiftUI

struct splash_screen: View {
    @State private var isBottomSheetPresented = true

    var body: some View {
        VStack() {
           
            Image(uiImage: .appLogo)
                .resizable()
                .frame(width: 80, height: 80)
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            Spacer()
                    RoundedRectangle(cornerRadius: 20)
                .frame(height: UIScreen.main.bounds.height / 1.9)
                        .foregroundColor(.second)
                        .overlay(
                            VStack(spacing: 16.0) {
                                Circle().frame(height: 80).foregroundColor(Color.white).overlay(content: {
                                    Image(systemName: "shippingbox.fill").resizable().frame(width: 40, height: 40)
                                    })
                                Text("Non-Contact")
                                    .font(.title).fontWeight(.semibold).foregroundColor(.textPrimary)
                                Text("Deliveries")
                                    .font(.title).fontWeight(.semibold).foregroundColor(.textPrimary).padding(.bottom, 5.0)
                                Text("When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.").multilineTextAlignment(.center).lineSpacing(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
                                
                                app_button(buttonName: "order now", onDataUpdate: { _ in print("")}, isOutlined: false, backgroundColor: .buttonPrimary, borderColor: Color.clear, textColor: Color.white)
                                
                                app_button(buttonName: "dismiss ", onDataUpdate: { _ in print("")}, isOutlined: false, backgroundColor: Color.clear, borderColor: Color.clear, textColor: .textSecondary)
                            }.padding(.horizontal, 16.0)
                        )
        }.background(.main)
                .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    splash_screen()
}
