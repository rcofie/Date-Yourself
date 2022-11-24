//
//  HealthScreenView.swift
//  That Girl
//
//  Created by Rebecca Cofie on 21/11/2022.
//

import SwiftUI

struct MentalHealthScreenView: View {
    var body: some View {
        NavigationView {
            HStack {
                Text("Meditations")
                    .font(Font.custom("Karla-Medium", size: 29))
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                    .padding(.leading, 25)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
            }
        }
    }
}

struct PhysicalHealthScreenView: View {
    var body: some View {
        Text("Physical Health Screen View")
    }
}

struct HealthTabBar: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(CustomColors.cream)
//        UITabBarItem.appearance().setTitleTextAttributes([.font : TabViewScreen.karla], for: []) I want to change the font of the tabItems to Karla regular
    }
    var body: some View {
        TabView {
            MentalHealthScreenView()
                .tabItem {
                    Image(systemName: "brain.head.profile")
                    Text("Mental Health")
                }
            PhysicalHealthScreenView()
                .tabItem {
                    Image(systemName: "figure.run")
                    Text("Physical Health")
                }
        }
        .accentColor(.black)
    }
}

struct MentalHealthScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HealthTabBar()
    }
}
