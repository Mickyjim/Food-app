//
//  TabButton.swift
//  Food-App
//
//  Created by Michael Favre on 11/06/2022.
//

import SwiftUI

struct TabButton: View {
    
    var title: String
    @Binding var selectedTab: String
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {selectedTab = title}
                
        }, label: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .font(.system(size: 44, weight: .medium, design: .rounded))
                    .foregroundColor(selectedTab == title ? .black : .gray)
                
                if selectedTab == title {
                    Capsule()
                        .fill(Color.black)
                        .frame(width: 0, height: 0)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                }
            })
        })
    }
}
