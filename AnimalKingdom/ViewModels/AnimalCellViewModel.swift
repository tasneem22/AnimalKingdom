//
//  AnimalCellViewModel.swift
//
//  Created by Tasneem Toolba on 11.04.2022.
//

import Foundation
import Combine
class AnimalCellViewModel: ObservableObject, Identifiable{
    @Published var animalRepo = AnimalRepo()
    @Published var animal: Animal
    var id = ""
    var title = ""
    var bio = ""


    private var cancellables = Set<AnyCancellable>()
    init(animal: Animal){
        self.animal = animal
        
        $animal.compactMap{
            animal in animal.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
        
        
        $animal.compactMap{
            animal in animal.title
        }
        .assign(to: \.title, on: self)
        .store(in: &cancellables)
        
        
        $animal.compactMap{
            animal in animal.bio
        }
        .assign(to: \.bio, on: self)
        .store(in: &cancellables)

    }
    func update(animal: Animal){
        $animal
            .sink { animal in
            self.animalRepo.updateAnimal(animal: animal)
        }.store(in: &cancellables)
    }
}
