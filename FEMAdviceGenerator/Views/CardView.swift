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
    The divider image, the AdviceNumHeaderView, the AdviceView & the DiceIconView  are "attached" to this card.
   
    GeometryReader detect the orientation of the device and allows you to customize they layout accordingly.
    GeoReader can be "expensive", but I find it to be much more reliable than size classes. This view is quite large but
    was necessary for this project.
*/
struct CardView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            GeometryReader { geo in
                if geo.size.height > geo.size.width {
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.darkBlue)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 150)
                        .overlay(
                    Image("pattern-divider-mobile")
                        .padding(.top, 300)
                )
                .overlay(
                    AdviceNumHeaderView()
                        .position(x: 200, y: 190)
                )
                .overlay(
                    AdviceView()
                        .padding(.top, 150)
                        .position(x: 250, y: 300)
                )
                .overlay(
                    DiceIconView()
                        .position(x: 195, y: 610)
                )
                }else {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.darkBlue)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .padding(.horizontal, 100)
                        .padding(.vertical, 20)
                        .overlay(
                            Image("pattern-divider-mobile")
                                .padding(.top, 250)
                        )
                        .overlay(
                            AdviceNumHeaderView()
                                .position(x: 370, y: 50)
                        )
                        .overlay(
                            AdviceView()
                                .padding(.leading, 100)
                        )
                        .overlay(
                            DiceIconView()
                                .position(x: 375, y: 350)
                        )
                    
                }
            }
            
        }
        }
    }


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .environmentObject(ViewModel())
            //.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
