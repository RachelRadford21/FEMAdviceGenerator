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
            VStack {
            
                
               
                VStack {
                    AdviceView()
                        .padding(.top, 150)
                }
                   
                DiceIconView()
                    .position(x: 195, y: 115)
                    
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
