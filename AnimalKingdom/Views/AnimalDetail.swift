//
//  updateAnimal.swift
//
//  Created by Tasneem Toolba on 11.04.2022.
//

import SwiftUI

struct AnimalDetails: View {
    @State var animalCellVM: AnimalCellViewModel
    var body: some View {
        NavigationView {
            Text(animalCellVM.animal.firstName + animalCellVM.animal.lastName )
            AsyncImage(url: URL(string: animalCellVM.animal.avatar)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            TextField("title ", text: $animalCellVM.animal.title)
                .navigationTitle("Animal Detail")
                                .toolbar {
                                    Button("Save") {
                                        print("Help tapped!")
                                    }
                                }
        }
        
    }
}
