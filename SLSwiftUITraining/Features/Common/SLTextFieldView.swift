//
//  SLTextFieldView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 20/08/2024.
//

import SwiftUI

struct SLTextFieldView: View {
    
    let placeholderText: String
    @Binding var text: String
    @State var isSecure: Bool = false
    
    var body: some View {
        if isSecure {
            SecureField(placeholderText, text: $text)
                .frame(height: 50)
                .padding([.leading,.horizontal], 16.0)
                .border(Color(UIColor(displayP3Red: 232/255, green: 232/255, blue: 232/255, alpha: 1)), width: 1.0)
                .background(Color(UIColor(displayP3Red: 246/255, green: 246/255, blue: 246/255, alpha: 1)))
                .cornerRadius(10.0)
                .padding([.leading, .trailing], 16)
        } else {
            TextField(placeholderText, text: $text)
                .frame(height: 50)
                .padding([.leading,.horizontal], 16.0)
                .border(Color(UIColor(displayP3Red: 232/255, green: 232/255, blue: 232/255, alpha: 1)), width: 1.0)
                .background(Color(UIColor(displayP3Red: 246/255, green: 246/255, blue: 246/255, alpha: 1)))
                .cornerRadius(10.0)
                .padding([.leading, .trailing], 16)
        }
    }
}

#Preview {
    SLTextFieldView(placeholderText: "Name", text: .constant(""))
}
