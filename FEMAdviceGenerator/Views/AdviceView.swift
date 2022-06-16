//
//  AdviceView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import SwiftUI


///MARK:
/*
    This view is responsible for displaying the pices of advice. The Text view in this view shows the "opening text" when the app isnt started. It then shows the advice from the api call after the dice is pressed.
*/
struct AdviceView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        
            Text(viewModel.isStarted ? viewModel.randomAdvice?.slip.advice ?? "" : viewModel.openingText)
                .font(.title)
                .fontWeight(.bold)
                .font(.custom("manrope",size: 0, relativeTo: .caption))
                .multilineTextAlignment(.leading)
                .foregroundColor(Color.lightCyan)
                .frame(width: 300, height: 300, alignment: .leading)
                .lineLimit(10)
                .scaledToFit()

    }
   
}


struct AdviceView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceView()
            .environmentObject(ViewModel())
    }
}
