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
