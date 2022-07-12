//
//  QuoteView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/14/22.
//

import SwiftUI

struct QuoteView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
                    CardView()

        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.portraitUpsideDown)
            //.previewInterfaceOrientation(.landscapeLeft)
    }
}
