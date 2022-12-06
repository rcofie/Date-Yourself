//
//  PlayerView.swift
//  That Girl
//
//  Created by Rebecca Cofie on 06/12/2022.
//

import SwiftUI

struct PlayerView: View {
    @State private var value: Double = 0.0
    var body: some View {
        ZStack {
            Image("image-love")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            // MARK: Blur view
            
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.25)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                // MARK: Dismiss button - come back to this in a bit
                
                Button {
                    
                } label: {
                    
                }
                
                // MARK: Title
                
                Text("Love")
                    .font(Font.custom("Karla-Medium", size: 30))
                
                Spacer()
                
                VStack(spacing: 5) {
                    // MARK: Playback Timeline
                    Slider(value: $value, in: 0...60)
                        .accentColor(.white)
                    
                    HStack {
                        Text("0:00")
                        
                        Spacer()
                        
                        Text("1:00")
                    }.font(.caption)
                    
                    HStack {
                        PlaybackControlButton(systemName: "gobackward.15", fontSize: 24) {
                        }
                        
                        Spacer()
                        
                        PlaybackControlButton(systemName: "play.fill") {
                            
                        }.padding(.leading, 10)
                        
                        PlaybackControlButton(systemName: "stop.fill") {
                            
                        }.padding(.leading, 20)
                        
                        Spacer()
                        
                        PlaybackControlButton(systemName: "goforward.15", fontSize: 24) {
                        }
                    }
                    
                }
                
            }
            .padding(20)
            .foregroundColor(.white)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
