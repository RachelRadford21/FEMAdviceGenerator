//
//  ViewModel.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/14/22.
//

import Foundation

///MARK: Comments
/*
    The view model where I place my variables and call the advice slip api, to get advice.
    - randomAdvice -> One of my models.
    - currentPage ->  Sets the page from the enum to page1, for the switch statement in content view.
    - randomNum ->    creates a random number for the header(AdviceNumHeaderView()).
    - isStarted - >   When the app is not started the opening text is shown. Otherwise, a piece of advice is displayed. This also sets a shadow radius around button               once the button has been pressed and the advice is displayed.
    - openingText ->  The text shown on screen before the app has started
    - fetchData ->    Make api call.
*/
@MainActor
class ViewModel: ObservableObject {
   
    @Published var randomAdvice: Advice?
    @Published var currentPage: Pages = .page1
    @Published var randomNum = 0
    @Published var isStarted = false
    @Published var openingText = "Press Dice For Advice"
    @Published var quote = ""
    func fetchData() async {
        guard let url = URL(string: "https://api.adviceslip.com/advice") else { return }
        
        do {
            
            let(data, _) = try await URLSession.shared.data(from: url)
            if let data = String(data: data, encoding: .utf8){
            
                print(data)
                
            }
            let decodedResponse = try? JSONDecoder().decode(Advice.self, from: data)
            self.randomAdvice = decodedResponse
           quote = randomAdvice?.slip.advice ?? ""
        }catch {
            print("Failed to reach end point: \(error)")
        }
        
        
    }
}
