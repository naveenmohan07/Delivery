//
//  chip.component.swift
//  Delivery
//
//  Created by The Scalers on 02/01/24.
//

import SwiftUI

struct chip_component: View {
    var chipName: String
    var selectedChip: (String) -> Void
    var selected: String
    
    var body: some View {
        Text(chipName)
            .padding(8.0)
            .foregroundColor(selected == chipName ? .selectedChipText : .textSecondary)
            .background(selected == chipName ? .selectedChip : .white)
            .onTapGesture {
                selectedChip(chipName)
            }
            .clipShape(RoundedRectangle(cornerRadius: 18)
            )
    }
}

#Preview {
    chip_component(chipName: "chip name", selectedChip: { selected in print(selected) }, selected: "chip name")
}
