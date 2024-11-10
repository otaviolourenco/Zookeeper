//
//  ContentView.swift
//  Zookeeper
//
//  Created by Otavio Lourenço on 10/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    let animalGroups = [
        AnimalGroup(groupName: "Pets", animals: [
            Animal(name: "Dog"),
            Animal(name: "Cat"),
            Animal(name: "Parrot"),
            Animal(name: "Mouse")
        ]),
        AnimalGroup(groupName: "Farm", animals: [
            Animal(name: "Cow"),
            Animal(name: "Horse"),
            Animal(name: "Goat"),
            Animal(name: "Sheep"),
        ]),
        AnimalGroup(groupName: "Critters", animals: [
            Animal(name: "Firefly"),
            Animal(name: "Spider"),
            Animal(name: "Ant"),
            Animal(name: "Squirrel"),
        ])
    ]
    
    var body: some View {
        VStack{
            Text("A very beautyful list 😃").font(.headline)
                List{
                    ForEach(animalGroups) {animalGroup in
                        Section(header: Text(animalGroup.groupName)) {
                            ForEach(animalGroup.animals) { animal in
                                Text(animal.name)
                            }
                        }
                    }
                }
        }
    }
}


#Preview {
    ContentView()
}
