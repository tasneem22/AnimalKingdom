//
//  File.swift
//
//  Created by Tasneem Toolba on 06.04.2022.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Firebase
import FirebaseAuth
class AnimalRepo: ObservableObject{
   
    private var db = Firestore.firestore()

    @Published var animals = [Animal]()

    init(){
        loadAnimals()
    }
    
    func loadAnimals() {
        db.collection("animals")
            .addSnapshotListener{ (querySnapshot, error) in
            if let querySnapshot = querySnapshot {
                self.animals = querySnapshot.documents.compactMap{document in
                    try? document.data(as: Animal.self)
                }
            }
            
        }
    }
    
    func updateAnimal(animal: Animal){
    let animalID = animal.id
        do{
            try db.collection("animals").document(animalID).setData(from: animal)
            
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
    
    
}
