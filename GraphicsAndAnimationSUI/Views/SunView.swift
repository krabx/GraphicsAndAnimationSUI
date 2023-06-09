//
//  SunView.swift
//  GraphicsAndAnimationSUI
//
//  Created by Богдан Радченко on 08.05.2023.
//

import SwiftUI

struct SunView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let spacing = size * 0.1
            
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
            .fill(.yellow)
            
            ForEach(0..<12) { iteration in
                Path { path in
                    path.move(to: CGPoint(x: middle, y: spacing))
                    path.addLine(to: CGPoint(x: middle, y: size * 0.25 - 10))
                }
                .stroke(Color(.yellow), style: StrokeStyle(lineWidth: 3))
                .rotationEffect(.degrees(Double( iteration * 30 )))
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SunView()
            .frame(width: 400, height: 400)
    }
}
