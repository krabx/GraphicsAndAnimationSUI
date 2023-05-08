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
            VStack {
                SunView()
                    .frame(width: 300, height: 300)
                WaveView()
                    .frame(width: UIScreen.main.bounds.width, height: 300)
                    .padding(.bottom, -10)
                Rectangle()
                    .foregroundColor(Color(red: 0.98, green: 0.91, blue: 0.71))
                    .ignoresSafeArea()
            }
            
//                WaveView()
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
