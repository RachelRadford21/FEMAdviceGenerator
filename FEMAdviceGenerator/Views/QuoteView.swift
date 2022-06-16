//
//  QuoteView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/14/22.
//

import SwiftUI


///MARK:
/*
    This is the "main view", the subviews are passed up to this view
*/

struct QuoteView: View {
    @StateObject var viewModel = ViewModel()

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            CardView()
            VStack {
                AdviceView()
                    .padding(.top, 200)
                   
                DiceIconView()
                    .position(x: 195, y: 65)
                    
            }
            
        }
        
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
            .environmentObject(ViewModel())
    }
}
