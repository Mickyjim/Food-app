//
//  OptionsView.swift
//  Food-App
//
//  Created by Michael Favre on 08/06/2022.
//

import SwiftUI

struct OptionsView: View {
    
    @State var selectedTab = scrollTabs[0]
    @State var title = ""
    @Namespace var animation
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 15) {
                    ForEach(scrollTabs, id: \.self) { tab in
                        TabButton(title: tab, selectedTab: $selectedTab, animation: animation)
                    }
                }
                .padding(.top, 10)
            })
                .padding()
            
            HStack(spacing: 10) {
                Text("Filters".uppercased())
                Button {
                    self.title = ""
                } label: {
                    Text("Spicy".uppercased())
                        .font(.caption)
                        .bold()
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Capsule()
                                .stroke(Color.gray, lineWidth: 2.0)
                        )
                }
                Button {
                    self.title = ""
                } label: {
                    Text("Vegan".uppercased())
                        .font(.caption)
                        .bold()
                        .foregroundColor(.gray)
                        .padding()
                        .padding(.horizontal, 15)
                        .background(
                            Capsule()
                                .stroke(Color.gray, lineWidth: 2.0)
                        )
                }
            }
            .frame(width: 350, height: 30, alignment: .leading)
            
        }
    }
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView()
    }
}
