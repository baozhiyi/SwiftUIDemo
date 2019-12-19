//
//  HikeRow.swift
//  SwiftUIDemo
//
//  Created by 鲍志轶 on 2019/12/17.
//  Copyright © 2019 鲍志轶. All rights reserved.
//

import SwiftUI

extension AnyTransition {
    static var moveAndFade: AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
        let removal = AnyTransition.scale.combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct HikeRow: View {
    var hike: Hike
    @State private var showDetail = false

    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike,
                          path: \.elevation)
                    .frame(width: 50, height: 30)
                .animation(nil)

                VStack(alignment: .leading) {
                    Text(verbatim: hike.name)
                        .font(.headline)
                    Text(verbatim: hike.distanceText)
                }
                .animation(nil)

                Spacer()

                Button(action: {
                    withAnimation {
                        self.showDetail.toggle()
                    }
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                    .animation(nil)
                }
            }

            if showDetail {
                HikeDetail(hike: hike)
                    .transition(.moveAndFade)
            }
        }
    }
}

struct HikeRow_Previews: PreviewProvider {
    static var previews: some View {
        HikeRow(hike: hikeData[0])
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
