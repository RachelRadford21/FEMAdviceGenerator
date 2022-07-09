//
//  AdviceView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import SwiftUI


///MARK:
/*
    This view is responsible for displaying the pieces of advice. The Text view in this view shows the "opening text" when the app isn't started. It then shows the advice from the api call after the dice is pressed.
    I tried to add quotes around the advice but escaping & using -> "\()" didn't work.
*/
struct AdviceView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        
        Text(viewModel.isStarted ? "\"\(viewModel.quote) \"" : viewModel.openingText)
                .font(.title)
                .fontWeight(.bold)
                .font(.custom("manrope",size: 0, relativeTo: .caption))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.lightCyan)
                .frame(width: 290, height: 300, alignment: .center)
                .background(Color.clear)
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
