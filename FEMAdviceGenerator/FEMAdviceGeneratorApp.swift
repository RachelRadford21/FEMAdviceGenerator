//
//  FEMAdviceGeneratorApp.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/14/22.
//

import SwiftUI

@main
struct FEMAdviceGeneratorApp: App {
    @StateObject var viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
