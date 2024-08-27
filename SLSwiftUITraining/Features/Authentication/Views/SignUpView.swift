//
//  SignUpView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 20/08/2024.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var showLoginView: Bool = false
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var isShowPassword: Bool = false
    
    @EnvironmentObject var router: AppRouter
    
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Button(action: {
                    router.navigate(to: .loginScreen)
                }, label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .padding(10)
                    
                })
                .foregroundColor(.gray)
                Spacer(minLength: 0)
                Text("Sign Up")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(width: 113, height: 36, alignment: .center)
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                NavigationLink {
//                    LoginView()
                } label: {
                    Text("Login")
                        .foregroundColor(Color(UIColor(displayP3Red: 93/255, green: 176/255, blue: 117/255, alpha: 1)))
                        .fontWeight(.regular)
                        .padding([.trailing], 16)
                }
            }
            .padding([.leading, .trailing], 15)
            Spacer()
                .frame(height: 16)
            SLTextFieldView(placeholderText: "Name", text: $name)
            Spacer().frame(height: 16)
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
                .frame(height: 50)
            
            HStack(spacing: 20){
                CustomCheckboxView()
                    .frame(width: 16, height: 16)
                Text("I would like to receive your newsletter and other promotional information.")
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 14))
            }
            Spacer()
                .frame(height: 30)
            
            SLButtonView(btnTitle: "Sign Up") {
                print("Sign Up button Pressed")
            }
            
            SLTextBtnView(btnTitle: "Forgot your password?", action: {
                print("Forgot btn Pressed")
            })
            
            
            
            
        }
        .padding(.horizontal, 16)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    SignUpView()
}
