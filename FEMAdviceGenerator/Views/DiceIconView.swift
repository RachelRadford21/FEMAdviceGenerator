//
//  DiceIconView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import SwiftUI

struct DiceIconView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
            Button {
                viewModel.isStarted = true
              Task{
                await viewModel.fetchData()
                  }
                viewModel.randomNum = Int.random(in: 1...300)
                } label: {
                    Image("icon-dice")
                        .shadow(color: viewModel.isStarted ? Color.black : Color.neonGreen, radius: viewModel.isStarted ? 0 : 1)
                        .background(
                            Circle()
                                .foregroundColor(Color.neonGreen)
                                .frame(width: 50, height: 50)
                                .cornerRadius(30)
                            
                        )
                        .shadow(color: Color.neonGreen, radius: viewModel.isStarted ? 6 : 0)
                
        }
    }
}

struct DiceIconView_Previews: PreviewProvider {
    static var previews: some View {
        DiceIconView()
            .environmentObject(ViewModel())
    }
}
