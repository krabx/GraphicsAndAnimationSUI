//
//  HouseView.swift
//  GraphicsAndAnimationSUI
//
//  Created by Богдан Радченко on 08.05.2023.
//

import SwiftUI

struct HouseView: View {
    let isAnimated: Bool
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let minimumSize = min(width, height)
            let middle = minimumSize / 2
            let spacing = minimumSize * 0.1
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: spacing))
                path.addLine(to: CGPoint(x: spacing, y: middle))
                path.addLine(to: CGPoint(x: minimumSize - spacing, y: middle))
            }
            .fill(.red)
            
            Path { path in
                path.move(to: CGPoint(x: spacing * 2, y: middle))
                path.addLine(to: CGPoint(x: spacing * 2, y: minimumSize - spacing))
                path.addLine(to: CGPoint(x: minimumSize - spacing * 2, y: minimumSize - spacing))
                path.addLine(to: CGPoint(x: minimumSize - spacing * 2, y: middle))
            }
            .fill(.brown)
            
            Path { path in
                path.move(to: CGPoint(x: middle - spacing, y: minimumSize * 0.7 + spacing))
                path.addLine(to: CGPoint(x: middle - spacing, y: minimumSize * 0.7 - spacing))
                path.addLine(to: CGPoint(x: middle + spacing, y: minimumSize * 0.7 - spacing))
                path.addLine(to: CGPoint(x: middle + spacing, y: minimumSize * 0.7 + spacing))
                path.closeSubpath()
            }
            .fill(isAnimated ? .yellow : .white)
            

            
            Path { path in
                path.move(to: CGPoint(x: middle, y: minimumSize * 0.7 + spacing))
                path.addLine(to: CGPoint(x: middle, y: minimumSize * 0.7 - spacing))
            }
            .stroke(Color(.black), style: StrokeStyle(lineWidth: 4))
            
            Path { path in
                path.move(to: CGPoint(x: middle - spacing, y: minimumSize * 0.7))
                path.addLine(to: CGPoint(x: middle + spacing, y: minimumSize * 0.7))
            }
            .stroke(Color(.black), style: StrokeStyle(lineWidth: 4))



            
        }
    }
}

struct HouseView_Previews: PreviewProvider {
    static var previews: some View {
        HouseView(isAnimated: false)
            .frame(width: 300, height: 300)
    }
}
