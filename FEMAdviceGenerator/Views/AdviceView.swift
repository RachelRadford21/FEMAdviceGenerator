//
//  AdviceView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import SwiftUI

struct AdviceView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        
        VStack {
            Text(viewModel.isStarted ? viewModel.randomAdvice?.slip.advice ?? "" : "Press Button To Get Advice")
                .font(.title)
                .fontWeight(.bold)
                .font(.custom("manrope",size: 0, relativeTo: .caption))
                .multilineTextAlignment(.leading)
                .foregroundColor(Color.lightCyan)
                .frame(width: 250, height: 300, alignment: .leading)
                .lineLimit(10)
            .scaledToFit()
        }
    }
   
}


struct AdviceView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceView()
            .environmentObject(ViewModel())
    }
}
