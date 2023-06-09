//
//  MoonView.swift
//  GraphicsAndAnimationSUI
//
//  Created by Богдан Радченко on 08.05.2023.
//

import SwiftUI

struct MoonView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: size / 4))
                
                path.addQuadCurve(
                    to: CGPoint(x: size * 0.75, y: middle),
                    control: CGPoint(x: size * 0.75, y: size * 0.25)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: size * 0.75),
                    control: CGPoint(x: size * 0.75, y: size * 0.75)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: size * 0.25, y: middle),
                    control: CGPoint(x: size * 0.25, y: size * 0.75)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: size * 0.25),
                    control: CGPoint(x: size * 0.25, y: size * 0.25)
                )
            }
            .fill(Color(red: 0.76, green: 0.77, blue: 0.8))
            
        }
    }
}

struct MoonView_Previews: PreviewProvider {
    static var previews: some View {
        MoonView()
            .frame(width: 300, height: 300)
    }
}
