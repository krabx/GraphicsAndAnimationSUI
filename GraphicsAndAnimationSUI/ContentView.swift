//
//  ContentView.swift
//  GraphicsAndAnimationSUI
//
//  Created by Богдан Радченко on 08.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.5, green: 0.78, blue: 1)
                .ignoresSafeArea()
//            Color(red: 0.059, green: 0.322, blue: 0.793)
//                .ignoresSafeArea()
            VStack {
                SunView()
                    .frame(width: 300, height: 300)
//                MoonView()
//                    .frame(width: 300, height: 300)
                ForestView()
                    .frame(width: 300, height: 300)
                    .padding(.bottom, -10)
                Rectangle()
                    .foregroundColor(.green)
                    .padding(.bottom, -220)
                    .ignoresSafeArea()
                HouseView()
                    .frame(width: 300, height: 300)
                    .padding(.top, -100)


            }
            
//                ForestView()
//                Rectangle()
//                    .fill(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
