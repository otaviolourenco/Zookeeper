//
//  AnimalsData.swift
//  Zookeeper
//
//  Created by Otavio Lourenço on 10/11/2024.
//
import Foundation
import SwiftUI

struct Animal: Identifiable {
    var id = UUID()
    var name: String
}

struct AnimalGroup: Identifiable {
    var id = UUID()
    var groupName: String
    var animals: [Animal]
}

