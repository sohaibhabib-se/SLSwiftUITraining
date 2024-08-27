//
//  PostCellView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 24/08/2024.
//

import SwiftUI

struct PostCellView: View {
    var body: some View {
        HStack (alignment: .top){
            Image("profile_pic")
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()
                .frame(width: 15)
            VStack(alignment: .leading){
                HStack{
                    Text("Header")
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("8m ago")
                        .font(.none)
                        .foregroundStyle(.gray)
                }
                Text("He'll want to use your yacht, and I don't want this thing smelling like fish.")
            }
        }
        .frame(height: 77)
    }
}

#Preview {
    PostCellView()
}
