//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by 鲍志轶 on 2019/12/17.
//  Copyright © 2019 鲍志轶. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CategoryHome().environmentObject(UserData())
                .tabItem {
                    Text("Landmark")
            }

            Badge()
                .tabItem {
                Text("Badge")
            }

            HikeView()
                .tabItem {
                Text("HikeView")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
