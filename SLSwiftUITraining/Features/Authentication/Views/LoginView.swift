//
//  LoginView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 23/08/2024.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var router: AppRouter
    
    @State private var showLoginView: Bool = false
    @State private var isShowPassword: Bool = false
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            Text("Log In")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            SLTextFieldView(placeholderText: "Email", text: $email)
            Spacer().frame(height: 16)
            ZStack(alignment: .topTrailing){
                SLTextFieldView(placeholderText: "Password", text: $password, isSecure: true)
                Button("Show", action: {
                    print("Show Button Pressed")
                    isShowPassword = true
                })
                .controlSize(.regular)
                .foregroundColor(Color(UIColor(displayP3Red: 93/255, green: 176/255, blue: 117/255, alpha: 1)))
                .fontWeight(.semibold)
                .padding([.trailing], 40)
                .padding([.top], 13)
            }
            
            Spacer()
                .frame(height: 100)
            
            SLButtonView(btnTitle: "Login") {
                router.navigate(to: .profileScreen)
            }
            
            SLTextBtnView(btnTitle: "Forgot your password?", action: {
                print("Forgot btn Pressed")
            })
            
                .navigationBarBackButtonHidden(true)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    LoginView()
}
