//
//  AppRouter.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 20/08/2024.
//

import Foundation

import SwiftUI

class AppRouter: ObservableObject {
    public enum Destination: Hashable {
        case loginScreen
        case profileScreen
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}
