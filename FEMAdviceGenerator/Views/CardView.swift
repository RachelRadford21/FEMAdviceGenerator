//
//  CardView.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/15/22.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
            GeometryReader { geo in
                if geo.size.height > geo.size.width {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.darkBlue)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .padding(.horizontal,geo.size.height * 0.03)
                        .padding(.vertical, geo.size.width * 0.40)
                        .overlay {
                            AdviceNumHeaderView()
                                .position(x: geo.size.width * 0.50, y: geo.size.height * 0.29)

                            AdviceView()
                                .position(x: geo.size.width * 0.50, y: geo.size.height * 0.45)
                            Image("pattern-divider-mobile")
                                .position(x: geo.size.width * 0.495, y: geo.size.height * 0.72)
                            DiceIconView()
                                .position(x: geo.size.width * 0.499, y: geo.size.height * 0.80)

                        }
                }else {
                    VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.darkBlue)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .padding(.horizontal, 100)
                        .padding(.vertical, 20)
                        .overlay {
                            AdviceNumHeaderView()
                                .position(x: geo.size.width * 0.48, y: geo.size.height * 0.12)
                            AdviceView()
                                .position(x: geo.size.width * 0.5, y: geo.size.height * 0.45)
                            Image("pattern-divider-mobile")
                                .position(x: geo.size.width * 0.499, y: geo.size.height * 0.80)
                            DiceIconView()
                                .position(x: geo.size.width * 0.499, y: geo.size.height * 0.95)

                      }
                   }
                }
            }
        }
    }


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.portrait)
            //.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
