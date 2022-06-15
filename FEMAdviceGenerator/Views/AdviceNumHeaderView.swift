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
            Text(viewModel.isStarted ? "Advice #\(viewModel.randomNum)" : "")
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
