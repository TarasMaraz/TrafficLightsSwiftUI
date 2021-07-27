//
//  ChangeColorButton.swift
//  TrafficLightsSwiftUI
//
//  Created by Тарас Панин on 27.07.2021.
//

import SwiftUI

struct ChangeColorButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 150, height: 30)
                .padding()
                .background(Color.init(red: 0.4, green: 0.5, blue: 0.5, opacity: 1))
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 3)
                )
        }
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "GO!", action: {})
    }
}
