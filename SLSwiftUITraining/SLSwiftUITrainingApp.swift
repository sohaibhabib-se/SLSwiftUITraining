//
//  SLSwiftUITrainingApp.swift
//  SLSwiftUITraining
//
//  Created by Muhammad Sohaib on 20/08/2024.
//

import SwiftUI

@main
struct SLSwiftUITrainingApp: App {
    
    @ObservedObject var router = AppRouter()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                SignUpView()
                    .navigationDestination(for: AppRouter.Destination.self) { destination in
                        switch destination {
                        case .loginScreen:
                            LoginView()
                        case .profileScreen:
                            ProfileView()
                        case .congratulationScreen:
                            CongratulationsView()
                        }
                    }
            }
            .environmentObject(router)
        }
    }
}
