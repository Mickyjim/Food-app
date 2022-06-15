//
//  Observer.swift
//  Food-App
//
//  Created by Michael Favre on 14/06/2022.
//

import SwiftUI
import Alamofire
import SwiftyJSON
import SDWebImageSwiftUI

class Observer: ObservableObject {
    
    @Published var datas = [DataType]()
    
    init() {
        AF.request("https://ig-food-menus.herokuapp.com/our-foods").responseData { (data) in
            let json = try! JSON(data: data.data!)
            for i in json {
                self.datas.append(DataType(id: i.1["id"].stringValue, name: i.1["name"].stringValue, image: i.1["img"].stringValue, description: i.1["dsc"].stringValue, country: i.1["country"].stringValue, price: i.1["price"].intValue))
            }
        }
    }
}
