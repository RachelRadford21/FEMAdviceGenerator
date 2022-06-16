//
//  AdviceNumHeaderView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import SwiftUI


///MARK:
/*
    This view creates the header on the card showing the advice number. For some reason I could not
    display the actual advice id from the api. So I created a variable to make a random number to show in place of the actual id.
 
    This header is hidden when the app first starts and once the dice button has been pushed it will dislay on screen.
*/

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
