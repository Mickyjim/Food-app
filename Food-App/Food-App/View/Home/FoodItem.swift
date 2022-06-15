//
//  FoodItem.swift
//  Food-App
//
//  Created by Michael Favre on 10/06/2022.
//

import SwiftUI
import Alamofire
import SwiftyJSON
import SDWebImageSwiftUI

struct FoodItem: View {
    
    @State var name = ""
    @State var image = ""
    @State var description = ""
    @State var country = ""
    @State var price = 0
    
    var body: some View {

        ZStack {
            VStack(alignment: .leading) {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .cornerRadius(40)
                        .padding()
                    Text(name)
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(Color.black)
                        .lineLimit(3)
                        .padding(.leading, 30)
                    Text(description)
                        .font(.headline)
                        .foregroundColor(.gray)
                        .lineLimit(3)
                        .padding(.leading, 30)
                        .padding(.bottom, 20)
                    
                    HStack(spacing: 20) {
                        Text(country)
                            .font(.headline)
                            .foregroundColor(.gray)
                            .lineLimit(3)
                            .padding(.leading, 30)
                            .padding(.bottom, 20)
                        
                        Spacer()
                        
                        Button(action: {
                        }, label: {
                            Text("\(price)")
                                .font(.headline)
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .padding(.horizontal, 10)
                                .background(
                                    Capsule()
                                        .fill(.black)
                                )
                        })
                    }
                    .padding()
                    .padding(.horizontal)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    
                }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


struct FoodItem_Previews: PreviewProvider {
    static var previews: some View {
        FoodItem()
    }
}
