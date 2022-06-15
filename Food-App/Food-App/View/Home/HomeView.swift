//
//  HomeView.swift
//  Food-App
//
//  Created by Michael Favre on 10/06/2022.
//

import SwiftUI
import Alamofire
import SwiftyJSON
import SDWebImageSwiftUI

struct HomeView: View {
    
    @State var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.45
    @State var currentDragOffsetY: CGFloat = 0
    @State var endingOffsetY: CGFloat = 0
    @ObservedObject var obs = Observer()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            FeaturedTabView()
            MenuDisplay()
                .offset(y: startingOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endingOffsetY)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                currentDragOffsetY = value.translation.height
                            }
                        }
                        .onEnded { value in
                            
                            withAnimation(.spring()) {
                                if currentDragOffsetY < -150 {
                                    endingOffsetY = -startingOffsetY
                                } else if endingOffsetY != 0 && currentDragOffsetY > 150 {
                                    endingOffsetY = 0
                                }
                                currentDragOffsetY = 0
                            }
                        }
                )
            
            Button(action: {}) {
                ZStack {
                    Image(systemName: "cart")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .padding()
                        .foregroundColor(.black)
                        .padding(.horizontal)
                    Circle()
                        .fill(Color.green)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
