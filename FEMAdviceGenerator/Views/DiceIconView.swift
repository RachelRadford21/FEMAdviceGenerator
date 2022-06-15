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
        VStack {
                Image("icon-dice")
                    .background(
                        Circle()
                            .foregroundColor(Color.neonGreen)
                            .frame(width: 50, height: 50)
                            .cornerRadius(30)

                    )
                    .shadow(color: Color.neonGreen, radius: viewModel.isPressed ? 6 : 0)
                    .onTapGesture {
                        viewModel.isPressed.toggle()
                        viewModel.isStarted = true
                        Task{
                            await viewModel.fetchData()
                        }
                    }
        }
    }
    
}

struct DiceIconView_Previews: PreviewProvider {
    static var previews: some View {
        DiceIconView()
            .environmentObject(ViewModel())
    }
}
