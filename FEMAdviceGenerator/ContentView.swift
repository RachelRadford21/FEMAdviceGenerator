//
//  ContentView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/14/22.
//

import SwiftUI

///MARK:
/*
 enum to allow us to add pages/screen views to app
 */
enum Pages {
    case page1
}

/*
    Using a switch statement to pass views throughout app. Also, the "entry point" to app, where you should start the app.
 */
struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    var body: some View {
        
        switch viewModel.currentPage {
        case .page1:
            QuoteView(viewModel: viewModel)
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
            //.previewInterfaceOrientation(.landscapeRight)
    }
}
