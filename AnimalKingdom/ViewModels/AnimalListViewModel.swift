//
//  AnimalListViewModel.swift
//
//  Created by Tasneem Toolba on 11.04.2022.
//

import Foundation
import Combine

class AnimalListViewModel: ObservableObject{
    @Published var animalRepo = AnimalRepo()
    @Published var animalCellViewModels = [AnimalCellViewModel]()

    private var cancellables = Set<AnyCancellable>()
        
    init() {
        animalRepo.$animals.map{ animals in
            animals.map{animal in
                AnimalCellViewModel(animal: animal)
            }
        }
        .assign(to: \.animalCellViewModels,on: self)
        .store(in: &cancellables)
        
    }
    func updatenimal(animal: Animal){
        animalRepo.updateAnimal(animal: animal)
    }
}
