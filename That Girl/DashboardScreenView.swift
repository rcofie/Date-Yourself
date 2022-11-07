//
//  DashboardScreenView.swift
//  That Girl
//
//  Created by Rebecca Cofie on 06/11/2022.
//

import SwiftUI


struct TabViewScreen: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(CustomColors.cream)
        }
    var body: some View {
        TabView {
            Text("Hobbies")
                .tabItem {
                    Text("Hobbies")
                        .font(Font.custom("Karla-Regular", size: 9))
                }
            Text("Appearance")
                .tabItem {
                    Text("Appearance")
                        .font(Font.custom("Karla-Regular", size: 9))
                }
            DashboardScreenView()
                .tabItem {
                    Text("Home")
                }
            Text("Organisation")
                .tabItem {
                    Text("Organisation")
                }
            Text("Health")
                .tabItem {
                    Text("Health")
                }
        }
    }
}

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
