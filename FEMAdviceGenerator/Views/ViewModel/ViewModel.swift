//
//  ViewModel.swift
//  FEMAdviceGenerator
//
//  Created by Rachel Radford on 6/14/22.
//

import Foundation

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
