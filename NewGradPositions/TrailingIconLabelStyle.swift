//
//  TrailingIconLabelStyle.swift
//  NewGradPositions
//
//  Created by Max Peng on 8/12/23.
//

import SwiftUI


struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.icon
    }
}


extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
