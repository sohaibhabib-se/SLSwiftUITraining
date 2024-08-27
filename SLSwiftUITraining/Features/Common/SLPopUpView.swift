//
//  SLPopUpView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 27/08/2024.
//

import SwiftUI

struct SLPopUpView: View {
    
    let title: String
    let message: String
    let buttonTitle: String
    let buttonSecondaryTitle: String
    let action: () -> ()
    let actionSecondary: () -> ()
    @State private var offset: CGFloat = 1000
    var body: some View {
            SLPopUpOutlineView{
                Text(title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.medium)
                
                Text(message)
                    .multilineTextAlignment(.center)
                
                SLButtonView(btnTitle: buttonTitle, action: action)
                
                
                SLTextBtnView(btnTitle: buttonSecondaryTitle, action: actionSecondary)
            }
    }
}

#Preview {
    SLPopUpView(title: "Hi", message: "nbbjbjbjhb", buttonTitle: "Ok", buttonSecondaryTitle: "Cancel", action: {
        print("Ok pressed")
    }, actionSecondary: {
        print("Cancel pressed")
    })
}



public struct SLPopUpOutlineView<Content: View>: View {
    
    @State private var offset: CGFloat = 1000
    let content: Content
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    public var body: some View {
        VStack{
            content
        }
            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 20)
            .padding(30)
            .offset(x: 0, y: offset)
            .onAppear{
                withAnimation(.spring()) {
                    offset = 0
                }
            }
    }
}
