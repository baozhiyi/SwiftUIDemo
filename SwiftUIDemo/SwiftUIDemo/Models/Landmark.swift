//
//  Landmark.swift
//  SwiftUIDemo
//
//  Created by 鲍志轶 on 2019/12/11.
//  Copyright © 2019 鲍志轶. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var city: String
    var category: Category
    var isFavorite: Bool = true
    
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Hashable, Codable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
