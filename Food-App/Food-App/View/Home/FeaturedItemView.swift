//
//  FeaturedItemView.swift
//  Food-App
//
//  Created by Michael Favre on 08/06/2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct FeaturedItemView: View {
    let footerImage: FooterImage
    
    var body: some View {

        WebImage(url: URL(string: "https://wallsdesk.com/wp-content/uploads/2017/01/Fast-Food-Photos.jpg"))
            .resizable()
            .scaledToFill()
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(footerImage: footerImages[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background()
    }
}
