//
//  search.component.swift
//  Delivery
//
//  Created by The Scalers on 01/01/24.
//

import SwiftUI

struct search_component: View {
    var borderColor: Color = Color.gray
    var backgroundColor: Color = .white
    var placeholderText: String = ""
    var textfieldValue: (String) -> Void
    var keyboardType: UIKeyboardType = .alphabet
    
    @FocusState var textFieldFocus: Bool

    @State private var searchText: String = ""

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField(placeholderText.capitalized, text: $searchText)
                .focused($textFieldFocus)
                .onSubmit() {
                    textfieldValue(searchText)
                }
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .keyboardType(.alphabet)
                .frame(height: 40)
        }
        .padding(8.0)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(textFieldFocus ? Color.green : borderColor, lineWidth: 1)
        )
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(backgroundColor) // Add the background color here
        )
    }
}

#Preview {
    search_component(borderColor: Color.red, placeholderText: "search",textfieldValue: {va in print("VAL ", va)})
}
