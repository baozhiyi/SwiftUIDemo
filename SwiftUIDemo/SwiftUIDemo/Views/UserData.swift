//
//  UserData.swift
//  SwiftUIDemo
//
//  Created by 鲍志轶 on 2019/12/13.
//  Copyright © 2019 鲍志轶. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
