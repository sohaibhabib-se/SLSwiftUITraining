//
//  PostView.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 24/08/2024.
//

import SwiftUI

struct PostView: View {
    
    init() {
       UITableView.appearance().separatorStyle = .none
       UITableViewCell.appearance().backgroundColor = .green
       UITableView.appearance().backgroundColor = .green
    }
    
    var body: some View {
        //        ZStack{
        //            Color.white
        //                .ignoresSafeArea()
        List{
            PostCellView()
            PostCellView()
            PostCellView()
        }
        .scrollContentBackground(.hidden)
        .background(.white)
        
        //        }
    }
}

#Preview {
    PostView()
}
