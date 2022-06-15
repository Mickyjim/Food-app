//
//  FeaturedTabView.swift
//  Food-App
//
//  Created by Michael Favre on 08/06/2022.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(footerImages) { footerImage in
                FeaturedItemView(footerImage: footerImage)
                    .padding(.bottom, 350)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
