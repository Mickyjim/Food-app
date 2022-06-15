//
//  MenuDisplay.swift
//  Food-App
//
//  Created by Michael Favre on 10/06/2022.
//

import SwiftUI
import Alamofire
import SwiftyJSON
import SDWebImageSwiftUI

struct MenuDisplay: View {
    @ObservedObject var obs = Observer()
    
    var body: some View {
        ZStack {
            VStack {
                OptionsView()
                    .padding(.top)
                NavigationView {
                    List(obs.datas) { i in
                        FoodItem(name: i.name, image: i.image, description: i.description, country: i.country, price: i.price)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(40)

        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct MenuDisplay_Previews: PreviewProvider {
    static var previews: some View {
        MenuDisplay()
    }
}
