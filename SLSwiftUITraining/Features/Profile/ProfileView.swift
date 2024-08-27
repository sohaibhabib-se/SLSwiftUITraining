//
//  ProfileView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 23/08/2024.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedTab = 0
    @State var isDrawerViewActive: Bool = false
    @State var isCongratulationsViewActive: Bool = false
    @State var isRateViewActive: Bool = false
    @EnvironmentObject var router: AppRouter
    
    var body: some View {
        ZStack{
            VStack{
                VStack{
                    HStack{
                        Button(action: {
                        }, label: {
                            Text("Settings")
                                .foregroundColor(.white)
                                .fontWeight(.regular)
                                .padding([.trailing], 16)
                        })
                        .foregroundColor(.white)
                        Spacer(minLength: 0)
                        Text("Profile")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .frame(width: 113, height: 36, alignment: .center)
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                        NavigationLink {
        //                    LoginView()
                        } label: {
                            Text("Logout")
                                .foregroundColor(.white)
                                .fontWeight(.regular)
                                .padding([.trailing], 16)
                        }
                    }
                    .padding()
                    Spacer()
                }
                .background(Color(red: 93/255, green: 176/255, blue: 117/255))
                .frame(height: 245)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                VStack(spacing: 0){
                    Spacer()
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    Text("Victoria Robertson")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text("A mantra goes here")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Picker("", selection: $selectedTab) {
                        Text("Posts").tag(0)
                        Text("Photos").tag(1)
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal, 20)
                    
                    if selectedTab == 0 {
                        PostView()
                    } else {
                        PhotoView()
                            .padding()
                    }
                    Spacer()
                }
//                .background(.blue)
                Spacer()
                
            }
            VStack{
                Spacer()
                    .frame(height: 170)
                Button{
                    isDrawerViewActive = true
                } label: {
                    Image("profile_pic")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 158, height: 158)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay{
                            Circle()
                                .stroke(.white, lineWidth: 5)
                        }
                }
                
                Spacer()
                
                    .ignoresSafeArea()
            }
            
//            if isActive {
//                VStack{
//                    Spacer()
//                    DrawerHeaderView(isActive: $isActive, title: "Drawer Header", message: "Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.", buttonTitle: "Click Me") {
//                        isActive = false
//                    }
//                }
//            }
            
            .navigationBarBackButtonHidden(true)
        }
        .sheet(isPresented: $isDrawerViewActive, content: {
            DrawerHeaderView(title: "Drawer Header", message: "Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation.", buttonTitle: "Click Me") {
                isDrawerViewActive = false
                router.navigate(to: .congratulationScreen)
            }
            .overlay{
                CustomMessageShape()
                    .stroke(.clear, lineWidth: 30)
            }
            .presentationDetents([.height(250)])
        })
    }
    
    struct CustomMessageShape: Shape {
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(
                roundedRect: rect,
                byRoundingCorners: [.topLeft, .topRight],
                cornerRadii: CGSize(width: 50, height: 50)
            )
            return Path(path.cgPath)
        }
    }
}

#Preview {
    ProfileView()
}
