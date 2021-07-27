//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Тарас Панин on 27.07.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
   
    @State private var title = "GO!"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
   
    private func nextColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch  currentLight {
        case .red:
            currentLight = .yellow
            greenLightState = lightIsOff
            redLightState = lightIsOn
        case .yellow:
            currentLight = .green
            yellowLightState = lightIsOn
            redLightState = lightIsOff
        case .green:
            currentLight = .red
            greenLightState = lightIsOn
            yellowLightState = lightIsOff
        }
        
    }
    
        var body: some View {
        ZStack {
            Color(.lightGray)
                .ignoresSafeArea(.all)
            VStack(spacing: 25) {
                СolorCircle(color: .red, opacity: redLightState)
                СolorCircle(color: .yellow, opacity: yellowLightState)
                СolorCircle(color: .green, opacity: greenLightState)
                
                Spacer()
                ChangeColorButton(title: title) {
                    if title == "GO!" {
                        title = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
