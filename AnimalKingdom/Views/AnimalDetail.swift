//
//  updateAnimal.swift
//
//  Created by Tasneem Toolba on 11.04.2022.
//

import SwiftUI

struct AnimalDetails: View {
    @State var animalCellVM: AnimalCellViewModel
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 20){
                VStack(alignment: .leading){

            Text("FirstName LastName").foregroundColor(.gray)
            Text(animalCellVM.animal.firstName + " " + animalCellVM.animal.lastName ) .foregroundColor(.gray)
                }
            VStack(alignment: .leading){
            Text("Title (Editable)").foregroundColor(.gray)
            TextField("title ", text: $animalCellVM.animal.title)
            }
            AsyncImage( url: URL(string: animalCellVM.animal.avatar))
            VStack(alignment: .leading){

            Text("Bio").foregroundColor(.gray)
            Text(animalCellVM.animal.bio).foregroundColor(.gray)
                }
        }
        }
        .padding()
        .frame(maxWidth: .infinity)

    }
}
