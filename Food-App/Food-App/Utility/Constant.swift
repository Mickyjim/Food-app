//
//  Constant.swift
//  Food-App
//
//  Created by Michael Favre on 08/06/2022.
//

import SwiftUI

let footerImages: [FooterImage] = Bundle.main.decode("footerImage.json")

struct Constant {
    struct Urls {
        static let optionCategoriesURL = URL(string: "https://recipesapi.herokuapp.com/api/v2/categories")!
    }
}
