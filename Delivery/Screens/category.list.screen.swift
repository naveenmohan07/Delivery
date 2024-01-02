//
//  category.list.screen.swift
//  Delivery
//
//  Created by The Scalers on 02/01/24.
//

import SwiftUI

struct category_list_screen: View {
    var screenName: String
    var filterData: Categories
    
    @State private var listSelected: String = ""
    @State private var addonSelected: String = ""


    var body: some View {
        VStack(
            alignment: .leading
        ) {
            Text(
                screenName
            )
            .font(
                .largeTitle
            )
            .fontWeight(
                .semibold
            )
            .foregroundColor(
                .primary
            )
            search_component(borderColor: .borderPrimary,
                             placeholderText: "search",
                             textfieldValue: {
                va in print(
                    "VAL ",
                    va
                )
            }
            )
            
            ScrollView(
                .horizontal
            ) {
                HStack {
                    ForEach(
                        filterData.listt,
                        id: \.self
                    ) { chip in
                        chip_component(chipName: chip,
                                       selectedChip: {
                            selectedChip in
                            listSelected = selectedChip
                        },
                                       selected: listSelected)
                    }
                }
            }.scrollIndicators(
                .hidden
            )
            
            ScrollView(
                .horizontal
            ) {
                HStack {
                    ForEach(
                        filterData.addons,
                        id: \.self
                    ) { chip in
                        chip_component(chipName: chip,
                                       selectedChip: {
                            selectedChip in
                            addonSelected = selectedChip
                        },
                                       selected: addonSelected)
                    }
                }
            }.scrollIndicators(
                .hidden
            )
            ScrollView {
                ForEach(
                    filterData.items,
                    id: \.name
                ) {
                    item in HStack(
                        alignment: .top
                    ) {
                        Image(
                            uiImage: item.image
                        ).resizable().frame(
                            width: 160,
                            height: 140
                        ).cornerRadius(
                            10
                        )
                        VStack(
                            alignment: .leading,
                            spacing: 8.0
                        ) {
                            Text(
                                item.name
                            )
                            .font(
                                .title2
                            )
                            .fontWeight(
                                .semibold
                            )
                            .foregroundColor(
                                .textPrimary
                            )
                            HStack {
                                Text(
                                    String(
                                        item.price
                                    )
                                )
                                .font(
                                    .title3
                                )
                                .fontWeight(
                                    .bold
                                )
                                .foregroundColor(
                                    Color(
                                        "textPrimary"
                                    )
                                )
                                
                                Text(
                                    "$ / \(item.type)"
                                )
                                .font(
                                    .title3
                                )
                                .fontWeight(
                                    .medium
                                )
                                .foregroundColor(
                                    Color(
                                        "textSecondary"
                                    )
                                )
                            }
                            HStack(
                                alignment: .bottom,
                                spacing: 18.0
                            ) {
                                icon_button(
                                    iconName: "heart",
                                    iconColor: .textSecondary,
                                    buttonBackground: .white,
                                    isOutlined: true,
                                    borderColor: .textSecondary
                                )
                                icon_button(
                                    iconName: "cart",
                                    iconColor: .white,
                                    buttonBackground: .buttonPrimary,
                                    isOutlined: false,
                                    borderColor: .textSecondary
                                )
                            }.padding(
                                .top
                            ).frame(
                                maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/
                            )
                        }
                        
                    }
                    .padding(.top)
                }
            }
        }
        .padding().background(
            .second
        )
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .topLeading
        )
        .navigationBarTitleDisplayMode(
            .inline
        )
        
    }
}

#Preview {
    category_list_screen(
        screenName: "Vegetable",
        filterData: Categories(
            listt: [
                "Сabbage and lettuce",
                "Сucumbers",
                "Tomatoes",
                "Onions"
            ],
            addons: [
                "Oinons and garlic",
                "Pepper",
                "Potatoes",
                "Ginger"
            ],
            items: [Item(
                name: "name",
                image: .fruits,
                price: 2.0,
                type: "piece"
            )]
        )
    )
}
