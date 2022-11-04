//
//  resusableComponents.swift
//  apexStats
//
//  Created by Tyler Kruer on 9/28/22.
//

import Foundation
import SwiftUI

public struct CustomButtonStyle: ButtonStyle {
    @Binding var buttonSelected: Bool
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(Font.body.weight(.medium))
            .padding()
            .foregroundColor(Color.black)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                    .fill(buttonSelected ? Color.red : Color.white)
                )
            .opacity(configuration.isPressed ? 0.4 : 1.0)
    }
}


public struct LetsGetStartedButton: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(Font.body.weight(.medium))
            .padding()
            .foregroundColor(Color.black)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 14.0, style: .continuous)
                    .fill(Color.white)
                )
            .opacity(configuration.isPressed ? 0.4 : 1.0)
    }
}
