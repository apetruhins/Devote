//
//  CheckboxStyle.swift
//  Devote
//
//  Created by Alex on 30/06/2022.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundColor(configuration.isOn ? .pink : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    configuration.isOn.toggle()
                    playSound(sound: configuration.isOn ? "sound-rise" : "sound-tap", type: "mp3")
                    feedback.notificationOccurred(.success)
                }
            
            configuration.label
        } //: HStack
    }
}

// MARK: - Preview

struct CheckboxStyle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle("Placeholder label", isOn: .constant(false))
            .toggleStyle(CheckboxStyle())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
