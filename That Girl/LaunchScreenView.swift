//
//  LaunchScreenView.swift
//  That Girl
//
//  Created by Rebecca Cofie on 04/11/2022.
//

import SwiftUI

struct CustomColors {
    static let cream = Color("Cream")
    static let blue = Color("Blue")
    static let pink = Color("Pink")
    static let babyPink = Color("Baby Pink")
    static let camouflage = Color("Camouflage")
    static let purple = Color("Purple")
}

struct LaunchScreenView: View {
    @State private var isActive = false // initial state of launch screen is false
   
    var body: some View {
        if isActive {
            DashboardScreenView()
        } else {
            ZStack {
                Text("That Girl")
                    .font(Font.custom("Karla-Regular", size: 47))
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
        
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
