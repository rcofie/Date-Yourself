//
//  PlaybackControlButton.swift
//  That Girl
//
//  Created by Rebecca Cofie on 06/12/2022.
//

import SwiftUI

struct PlaybackControlButton: View {
    var systemName: String = "play.fill"
    var fontSize: CGFloat = 40
    var color: Color = .white
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemName)
                .font(.system(size: fontSize))
                .foregroundColor(color)
        }

    }
}

struct PlaybackControlButton_Previews: PreviewProvider {
    static var previews: some View {
        PlaybackControlButton(action: {})
            .preferredColorScheme(.dark)
    }
}
