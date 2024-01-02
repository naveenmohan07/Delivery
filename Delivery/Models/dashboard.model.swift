//
//  dashboard.model.swift
//  Delivery
//
//  Created by The Scalers on 02/01/24.
//

import Foundation
import UIKit

//struct CategoryList: Identifiable {
//    var id = UUID()
//    var name: String
//    var image: UIImage
//    var count: Int
//}

struct Category {
    var id = UUID()
    var data: Array<CategoryData>
}

struct CategoryData {
    var name: String
    var count: Int
    var image: UIImage
    var categories: Categories
}

struct Categories {
    var listt: Array<String>
    var addons: Array<String>
    var items: Array<Item>
}

struct Item {
    var name: String
    var image: UIImage
    var price: Float
    var type: String
}


//// MARK: - TopLevel
//struct TopLevel {
//    var id: UUID()
//    var data: [Datum]
//}
//
//// MARK: - Datum
//struct Datum {
//    var name, count, image: String
//    var categories: [Category]
//}
//
//// MARK: - Category
//struct Category {
//    var listj, addons: [String]
//    var items: [Item]
//}
//
//// MARK: - Item
//struct Item {
//    var name, price, image, type: String
//}
