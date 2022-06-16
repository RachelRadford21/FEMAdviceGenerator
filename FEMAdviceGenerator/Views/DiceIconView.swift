//
//  DiceIconView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import SwiftUI


///MARK:
/*
    This view is created the dice button view. When the buttton is pressed it toggles isStarted. This will created a glow effect around the button once the user presses it to start displaying the advice.
    The fetchData() func is called once the button pressed to get advice.
*/
struct DiceIconView: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        ZStack {
            Button {
                viewModel.isStarted = true
                
                Task{
                    await viewModel.fetchData()
                }
            } label: {
                
                Image("icon-dice")
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
    
}

struct DiceIconView_Previews: PreviewProvider {
    static var previews: some View {
        DiceIconView()
            .environmentObject(ViewModel())
    }
}
