//
//  HealthScreenView.swift
//  That Girl
//
//  Created by Rebecca Cofie on 21/11/2022.
//

import SwiftUI

var meditationTitles = ["Love", "Peace"]

struct MentalHealthScreenView: View {

    struct cardView : View {
        @State private var showPlayer = false

        var img = ""
        var body : some View {
            VStack {
                HStack {
                    Image(img)
                }
                .frame(width: 211, height: 120)
            
                Text(meditationTitles[0]) // change this to get the data correctly - somehow
                    .font(Font.custom("Karla-Medium", size: 14))
                    .padding(.leading, 2)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .onTapGesture {
                showPlayer = true;
                }
            .fullScreenCover(isPresented: $showPlayer) {
                PlayerView()
            }
                    }
    }

    var body: some View {
            NavigationView {
                VStack {
                    VStack {
                        Text("Meditations")
                            .font(Font.custom("Karla-Medium", size: 29))
                            .foregroundColor(.black)
                            .font(.system(size: 25))
                            .padding(.leading, 25)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<3){i in
                                    cardView(img: "img\(i)").padding(.leading, 20)
                                }
                            }
                        }
                    }
                    VStack {
                        Text("Express Yourself")
                            .font(Font.custom("Karla-Medium", size: 29))
                            .foregroundColor(.black)
                            .font(.system(size: 25))
                            .padding(.leading, 25)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image("express-yoself").frame(width: 354, height: 190)
                    }
                }
                Spacer()
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
