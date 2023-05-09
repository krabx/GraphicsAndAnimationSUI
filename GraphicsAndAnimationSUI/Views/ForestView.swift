//
//  ForestView.swift
//  GraphicsAndAnimationSUI
//
//  Created by Богдан Радченко on 08.05.2023.
//

import SwiftUI

struct ForestView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: size / 2))
                
                path.addQuadCurve(
                    to: CGPoint(x: size * 0.25, y: size / 2),
                    control: CGPoint(x: size * 0.125, y: 0)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: size * 0.5, y: size / 2),
                    control: CGPoint(x: size * 0.375, y: 0)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: size * 0.75, y: size / 2),
                    control: CGPoint(x: size * 0.625, y: 0)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: size, y: size / 2),
                    control: CGPoint(x: size * 0.875, y: 0)
                )
            }
            .fill(.green)
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: size / 2))
                
                path.addQuadCurve(
                    to: CGPoint(x: size * 0.25, y: size / 2),
                    control: CGPoint(x: size * 0.125, y: size)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: size * 0.5, y: size / 2),
                    control: CGPoint(x: size * 0.375, y: size)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: size * 0.75, y: size / 2),
                    control: CGPoint(x: size * 0.625, y: size)
                )
                
                path.addQuadCurve(
                    to: CGPoint(x: size, y: size / 2),
                    control: CGPoint(x: size * 0.875, y: size)
                )
            }
            .fill(.green)
            
            ForEach(0..<4) { interval in
                Path { path in
                    path.move(
                        to: CGPoint(x: size * (0.125 + CGFloat(interval) * 0.25),
                                    y: size * 0.75)
                    )
                    
                    path.addLine(
                        to: CGPoint(x: size * (0.125 + CGFloat(interval) * 0.25),
                                    y: size)
                    )
                }
                .stroke(style: StrokeStyle(lineWidth: 8))
                .fill(.brown)
            }
        }
        
    }
}

struct ForestView_Previews: PreviewProvider {
    static var previews: some View {
        ForestView()
            .frame(width: 300, height: 300)
    }
}
