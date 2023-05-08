//
//  WaveView.swift
//  GraphicsAndAnimationSUI
//
//  Created by Богдан Радченко on 08.05.2023.
//

import SwiftUI

struct WaveView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let minimumSize = min(width, height)
            //let spacing = height * 0.1
                Path { path in
                    path.move(to: CGPoint(x: 0, y: height / 2))
                    path.addQuadCurve(
                        to: CGPoint(
                            x: minimumSize * 0.25,
                            y: height / 2
                        ), control: CGPoint(
                            x: minimumSize * 0.125,
                            y: 0
                        )
                    )
                
                    path.addQuadCurve(
                        to: CGPoint(
                            x: minimumSize * 0.5,
                            y: height / 2
                        ), control: CGPoint(
                            x: minimumSize * 0.375,
                            y: 0
                        )
                    )

                    path.addQuadCurve(
                        to: CGPoint(
                            x: minimumSize * 0.75,
                            y: height / 2
                        ), control: CGPoint(
                            x: minimumSize * 0.625,
                            y: 0
                        )
                    )

                    path.addQuadCurve(
                        to: CGPoint(
                            x: minimumSize,
                            y: height / 2
                        ), control: CGPoint(
                            x: minimumSize * 0.875,
                            y: 0
                        )
                    )
                }
                .fill(Color(red: 0.47, green: 0.86, blue: 0.89))
            Path { path in
                path.move(to: CGPoint(x: 0, y: height / 2))
                path.addLine(to: CGPoint(x: minimumSize, y: height / 2))
                path.addLine(to: CGPoint(x: minimumSize, y: height))
                path.addLine(to: CGPoint(x: 0, y: height))
            }
            .fill(Color(red: 0.47, green: 0.86, blue: 0.89))

        }

    }
}

struct WaveView_Previews: PreviewProvider {
    static var previews: some View {
        WaveView()
            .frame(width: UIScreen.main.bounds.width, height: 300)
    }
}
