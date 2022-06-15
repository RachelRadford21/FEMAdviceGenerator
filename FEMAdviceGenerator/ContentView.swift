//
//  ContentView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/14/22.
//

import SwiftUI

enum Pages {
    case page1
}

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
    }
}
