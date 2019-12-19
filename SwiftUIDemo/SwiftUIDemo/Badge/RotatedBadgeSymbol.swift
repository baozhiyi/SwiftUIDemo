//
//  RotatedBadgeSymbol.swift
//  SwiftUIDemo
//
//  Created by 鲍志轶 on 2019/12/13.
//  Copyright © 2019 鲍志轶. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
