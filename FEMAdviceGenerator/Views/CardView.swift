//
//  CardView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import SwiftUI


///MARK:
/*
    This is the background card seen on screen behind the pieces of advice.
    The divider image is "attached" to this card. The header view is passed to this view, instead of being passed to the QuoteView.
*/
struct CardView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.darkBlue)
                .frame(width: 350, height: 400, alignment: .center)
                .overlay(
                    Image("pattern-divider-mobile")
                        .padding(.top, 300)
                        .padding(.horizontal, 20)
            )
        AdviceNumHeaderView()
                .offset(x: 0, y: -350)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .environmentObject(ViewModel())
    }
}
