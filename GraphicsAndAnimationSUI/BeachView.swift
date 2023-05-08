//
//  BeachView.swift
//  GraphicsAndAnimationSUI
//
//  Created by Богдан Радченко on 08.05.2023.
//

import SwiftUI

struct BeachView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
        }
    }
}

struct BeachView_Previews: PreviewProvider {
    static var previews: some View {
        BeachView()
            .frame(width: UIScreen.main.bounds.width, height: 300)
    }
}
