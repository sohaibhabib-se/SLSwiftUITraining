//
//  CustomCheckboxView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 20/08/2024.
//

import SwiftUI

struct CustomCheckboxView: View {
    
    @State private var isChecked: Bool = false
    
    var body: some View {
        HStack {
            Button(action: {
                isChecked.toggle()
            }) {
                Image(systemName: isChecked ? "checkmark.square" : "square")
                    .foregroundColor(.gray)
                    .font(.system(size: 28))
            }
        }
        .padding()
    }
}

#Preview {
    CustomCheckboxView()
}
