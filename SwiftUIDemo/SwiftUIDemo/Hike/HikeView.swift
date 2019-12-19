/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view displaying inforamtion about a hike, including an elevation graph.
*/

import SwiftUI

struct HikeView: View {
    var hikes: [Hike] = hikeData

    var body: some View {
        NavigationView {
            List() {
                ForEach(hikes) { hike in
                    HikeRow(hike: hike)
                }
            }
            .navigationBarTitle(Text("HikeViews"))
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HikeView(hikes: hikeData)
                .padding()
            Spacer()
        }
    }
}

