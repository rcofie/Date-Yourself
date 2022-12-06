//
//  DashboardScreenView.swift
//  That Girl
//
//  Created by Rebecca Cofie on 06/11/2022.
//

import SwiftUI
import UIKit


struct TabViewScreen: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(CustomColors.cream)
//        UITabBarItem.appearance().setTitleTextAttributes([.font : TabViewScreen.karla], for: []) I want to change the font of the tabItems to Karla regular
    }
    var body: some View {
        TabView {
            Text("Hobbies")
                .tabItem {
                    Image(systemName: "star")
                    Text("Hobbies")
                }
            Text("Appearance")
                .tabItem {
                    Image(systemName: "mouth.fill")
                    Text("Appearance")
                }
            DashboardScreenView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Organisation")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Organisation")
                }
            MentalHealthScreenView()
                .tabItem {
                    Image(systemName: "bolt.heart")
                    Text("Health")
                }
        }
        .accentColor(.black)
    }
} // icons can be changed at a later date using custom ones

struct DashboardScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                CustomColors.babyPink.opacity(1).ignoresSafeArea()
                Text("DashboardScreen")
            }
        }
    }
}

struct DashboardScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewScreen()
    }
}
