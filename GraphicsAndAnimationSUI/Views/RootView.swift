//
//  RootView.swift
//  GraphicsAndAnimationSUI
//
//  Created by Богдан Радченко on 08.05.2023.
//

import SwiftUI

struct RootView: View {
    @State private var isAnimated = false
    private let colorDay = CGColor(red: 0.5, green: 0.78, blue: 1, alpha: 1)
    private let colorNight = CGColor(red: 0.059, green: 0.322, blue: 0.793, alpha: 1)
    
    var body: some View {
        ZStack {
            Color(!isAnimated ? colorDay : colorNight)
                .ignoresSafeArea()
            
            VStack {
                Button("Click me", action: { buttonAction() })
                    .font(.title)
                    .foregroundColor(!isAnimated ? .accentColor : .white)
                
                if !isAnimated {
                    SunView()
                        .frame(width: 200, height: 200)
                        .transition(.leadingSlide)
                } else {
                    MoonView()
                        .frame(width: 200, height: 200)
                        .animation(.default, value: 3)
                        .transition(.leadingSlide)
                }
                
                ForestView()
                    .frame(width: 250, height: 250)
                    .padding(.bottom, -10)
                
                Rectangle()
                    .foregroundColor(.green)
                    .padding(.bottom, -250)
                    .ignoresSafeArea()
                
                HouseView(isAnimated: isAnimated)
                    .frame(width: 300, height: 300)
                    .padding(.top, -100)
            }
        }
    }
    
    private func buttonAction() {
        withAnimation {
            isAnimated.toggle()
        }
    }
    
}

extension AnyTransition {
    static var leadingSlide: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.move(edge: .trailing)
            .combined(with: .scale)
        
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
