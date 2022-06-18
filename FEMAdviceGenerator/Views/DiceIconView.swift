//
//  DiceIconView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import SwiftUI


///MARK:
/*
    This view is created the dice button view. It has 3
    When the buttton is pressed it toggles isStarted. This will created a glow effect around the button once the user presses it to start displaying the advice.
    The fetchData() func is called once the button pressed to get advice.
    The button will also present a diff number for the AdviceNumHeaderView
*/
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
