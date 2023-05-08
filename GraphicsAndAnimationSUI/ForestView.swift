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
            let minimumSize = min(width, height)
            //let spacing = height * 0.1
                Path { path in
                    path.move(to: CGPoint(x: 0, y: minimumSize / 2))
                    path.addQuadCurve(
                        to: CGPoint(
                            x: minimumSize * 0.25,
                            y: minimumSize / 2
                        ), control: CGPoint(
                            x: minimumSize * 0.125,
                            y: 0
                        )
                    )
                
                    path.addQuadCurve(
                        to: CGPoint(
                            x: minimumSize * 0.5,
                            y: minimumSize / 2
                        ), control: CGPoint(
                            x: minimumSize * 0.375,
                            y: 0
                        )
                    )

                    path.addQuadCurve(
                        to: CGPoint(
                            x: minimumSize * 0.75,
                            y: minimumSize / 2
                        ), control: CGPoint(
                            x: minimumSize * 0.625,
                            y: 0
                        )
                    )

                    path.addQuadCurve(
                        to: CGPoint(
                            x: minimumSize,
                            y: minimumSize / 2
                        ), control: CGPoint(
                            x: minimumSize * 0.875,
                            y: 0
                        )
                    )
                }
                .fill(.green)
            Path { path in
                path.move(to: CGPoint(x: 0, y: minimumSize / 2))
                path.addQuadCurve(
                    to: CGPoint(
                        x: minimumSize * 0.25,
                        y: minimumSize / 2
                    ), control: CGPoint(
                        x: minimumSize * 0.125,
                        y: minimumSize
                    )
                )
            
                path.addQuadCurve(
                    to: CGPoint(
                        x: minimumSize * 0.5,
                        y: minimumSize / 2
                    ), control: CGPoint(
                        x: minimumSize * 0.375,
                        y: minimumSize
                    )
                )

                path.addQuadCurve(
                    to: CGPoint(
                        x: minimumSize * 0.75,
                        y: minimumSize / 2
                    ), control: CGPoint(
                        x: minimumSize * 0.625,
                        y: minimumSize
                    )
                )

                path.addQuadCurve(
                    to: CGPoint(
                        x: minimumSize,
                        y: minimumSize / 2
                    ), control: CGPoint(
                        x: minimumSize * 0.875,
                        y: minimumSize
                    )
                )
            }
            .fill(.green)
            
            Path { path in
                path.move(to: CGPoint(x: minimumSize * 0.125, y: minimumSize * 0.75))
                path.addLine(to: CGPoint(x: minimumSize * 0.125, y: minimumSize))
            }
            .stroke(style: StrokeStyle(lineWidth: 8))
            .fill(.brown)
            
            Path { path in
                path.move(to: CGPoint(x: minimumSize * 0.375, y: minimumSize * 0.75))
                path.addLine(to: CGPoint(x: minimumSize * 0.375, y: minimumSize))
            }
            .stroke(style: StrokeStyle(lineWidth: 8))
            .fill(.brown)
            
            Path { path in
                path.move(to: CGPoint(x: minimumSize * 0.625, y: minimumSize * 0.75))
                path.addLine(to: CGPoint(x: minimumSize * 0.625, y: minimumSize))
            }
            .stroke(style: StrokeStyle(lineWidth: 8))
            .fill(.brown)
            
            Path { path in
                path.move(to: CGPoint(x: minimumSize * 0.875, y: minimumSize * 0.75))
                path.addLine(to: CGPoint(x: minimumSize * 0.875, y: minimumSize))
            }
            .stroke(style: StrokeStyle(lineWidth: 8))
            .fill(.brown)
        }

    }
}

struct ForestView_Previews: PreviewProvider {
    static var previews: some View {
        ForestView()
            .frame(width: 300, height: 300)
    }
}
