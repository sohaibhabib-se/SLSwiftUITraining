//
//  CongratulationsView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 27/08/2024.
//

import SwiftUI

struct CongratulationsView: View {
    
    @State var isActive: Bool = false
    @EnvironmentObject var router: AppRouter
    
    var body: some View {
        ZStack{
            Color(UIColor(displayP3Red: 93/255, green: 176/255, blue: 117/255, alpha: 1))
                .ignoresSafeArea()
            
            SLPopUpView(title: "Congratulations!", message: "Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.", buttonTitle: "Click Me", buttonSecondaryTitle: "Secondary Action", action: {
                isActive = true
            }, actionSecondary: {
                print("Cancel pressed")
            })
            
            if isActive {
                VStack{
                    SLPopUpView(title: "Rate our app", message: "Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.", buttonTitle: "I love it!", buttonSecondaryTitle: "Don’t like the app? Let us know.", action: {
                        router.navigateBack()
                    }, actionSecondary: {
                        isActive = false
                    })
                }
            }
            
//                .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    CongratulationsView()
}

