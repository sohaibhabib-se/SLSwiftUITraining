//
//  SLButtonView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 20/08/2024.
//

import SwiftUI

struct SLButtonView: View {
    
    var btnTitle: String
    let action: () -> Void
    
    var body: some View {
        Button(btnTitle, action: action)
        .buttonStyle(.plain)
        .frame(height: 50)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(UIColor(displayP3Red: 93/255, green: 176/255, blue: 117/255, alpha: 1)))
        .controlSize(.extraLarge)
        .foregroundColor(.white)
        .font(.title)
        .clipShape(.capsule)
        .padding()
    }
}

#Preview {
    SLButtonView(btnTitle: "Hello", action: {
        print("Hello button pressed")
    })
}
