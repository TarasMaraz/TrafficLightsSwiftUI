//
//  СolorCircle.swift
//  TrafficLightsSwiftUI
//
//  Created by Тарас Панин on 27.07.2021.
//

import SwiftUI

struct СolorCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.black, lineWidth: 6))
            .shadow(radius: 10)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
            СolorCircle(color: .red, opacity: 1)
        }
}

