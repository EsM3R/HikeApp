//
//  GradientButton.swift
//  HIkeApp
//
//  Created by Mehmet Vural on 11.03.2024.
//

import SwiftUI


struct GradientButton : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal ,30)
            .background(
                RoundedRectangle(cornerRadius: 40)
                    .fill(LinearGradient(colors: [.colorGrayLight , .colorGrayMedium],

                                         startPoint: configuration.isPressed ?  .top : .bottom,
                                         endPoint:   configuration.isPressed ?  .bottom : .top)))
    }
    
}
