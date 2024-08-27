//
//  DrawerHeaderView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 25/08/2024.
//

import SwiftUI

struct DrawerHeaderView: View {
    
//    @Binding var isActive: Bool
    let title: String
    let message: String
    let buttonTitle: String
    let action: () -> ()
    @State private var offset: CGFloat = 1000
    
    var body: some View {
        VStack(spacing: 8){
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.medium)
            
            Text(message)
                .multilineTextAlignment(.center)
            
            SLButtonView(btnTitle: buttonTitle, action: action)
            
            
            SLTextBtnView(btnTitle: "Secondary Action") {
                print("Secondary action btn pressed")
            }
        }
//        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 20))
//        .shadow(radius: 20)
//        .padding(30)
//        .offset(x: 0, y: offset)
//        .onAppear{
//            withAnimation(.spring()) {
//                offset = 0
//            }
//        }
    }
}

#Preview {
    DrawerHeaderView(title: "Access photos?", message: "This lets you choose which photos you want to add to this project.", buttonTitle: "Give Access", action: {})
//    DrawerHeaderView(isActive: .constant(true), title: "Access photos?", message: "This lets you choose which photos you want to add to this project.", buttonTitle: "Give Access", action: {})
}
