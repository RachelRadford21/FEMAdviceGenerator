//
//  AdviceNumHeaderView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import SwiftUI

struct AdviceNumHeaderView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        VStack {
            Text(viewModel.isStarted ? "A D V I C E  # \(viewModel.randomNum)" : "")
                .font(.caption)
                .fontWeight(.bold)
                .font(.custom("manrope", size: 0))
                .foregroundColor(Color.neonGreen)
            
        }
    }
}

struct AdviceNumHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceNumHeaderView()
            .environmentObject(ViewModel())
    }
}
