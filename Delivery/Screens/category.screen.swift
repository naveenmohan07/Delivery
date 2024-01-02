//
//  category.screen.swift
//  Delivery
//
//  Created by The Scalers on 01/01/24.
//

import SwiftUI

struct category_screen: View {
    
    let categories: Category = Category(
        data: [CategoryData(
            name: "Vegetables",
            count: 22,
            image: .vegetable,
            categories:
                Categories(
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
                        name: "Boston Lettuce",
                        image: .vegetable,
                        price: 1.1,
                        type: "piece"
                    ),Item(
                        name: "Boston Lettuce",
                        image: .vegetable,
                        price: 1.1,
                        type: "piece"
                    ),Item(
                        name: "Boston Lettuce",
                        image: .vegetable,
                        price: 1.1,
                        type: "piece"
                    ),Item(
                        name: "Boston Lettuce",
                        image: .vegetable,
                        price: 1.1,
                        type: "piece"
                    ),Item(
                        name: "Boston Lettuce",
                        image: .vegetable,
                        price: 1.1,
                        type: "piece"
                    ),Item(
                        name: "Boston Lettuce",
                        image: .vegetable,
                        price: 1.1,
                        type: "piece"
                    )]
                )
        )]
    )
    
    var body: some View {
        NavigationView {
            VStack {
                search_component(borderColor: .borderPrimary,
                                 placeholderText: "search",
                                 textfieldValue: {
                    va in print(
                        "VAL ",
                        va
                    )
                }).padding()
                ScrollView {
                    LazyVGrid(
                        columns: Array(
                            repeating: .init(
                                .flexible(),
                                spacing: 20
                            ),
                            count: 2
                        ),
                        spacing: 20
                    ) {
                        ForEach(
                            categories.data,
                            id: \.name
                        ) { category in
                            NavigationLink(
                                destination: category_list_screen(
                                    screenName:category.name,
                                    filterData: category.categories
                                )
                            ) {
                                card_component(
                                    cardImage: category.image,
                                    cardName: category.name,
                                    cardDescription: String(
                                        category.count
                                    )
                                )
                            }
                        }
                    }.padding()
                    
                    
                }
                .navigationTitle(
                    "Categories"
                )
                
            }
        }
    }
}

#Preview {
    category_screen()
}
