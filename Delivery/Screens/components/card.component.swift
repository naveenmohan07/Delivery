//
//  card.component.swift
//  Delivery
//
//  Created by The Scalers on 01/01/24.
//

import SwiftUI

struct card_component: View {
    let cardImage: UIImage
    var cardName: String = ""
    var cardDescription: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Image(uiImage: cardImage).resizable()

            Group {
                Text(cardName)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("textPrimary"))
                Text("(\(cardDescription))")
                    .fontWeight(.medium)
                    .foregroundColor(Color("textSecondary"))

            }.padding([.top, .leading, .bottom]).frame(maxWidth: .infinity, maxHeight: 32, alignment: .leading)
        }
        .frame(width: 170, height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 10))

        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.borderPrimary, lineWidth: 1)
        )
        .background(Color.clear)


    }
}

#Preview {
    card_component(cardImage: .vegetable, cardName: "Vegetables",cardDescription: "30")
}
