//
//  SLTextBtnView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 23/08/2024.
//

import SwiftUI

struct SLTextBtnView: View {
    
    var btnTitle: String
    let action: () -> Void
    
    var body: some View {
        Button(btnTitle, action: action)
        .controlSize(.regular)
        .foregroundColor(Color(UIColor(displayP3Red: 93/255, green: 176/255, blue: 117/255, alpha: 1)))
        .fontWeight(.semibold)
        .padding([.top],0)
    }
}

#Preview {
    SLTextBtnView(btnTitle: "Forgot Password", action: {
        print("Btn Pressed")
    })
}
