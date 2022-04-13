//
//  updateAnimal.swift
//
//  Created by Tasneem Toolba on 11.04.2022.
//

import SwiftUI

struct AnimalDetails: View {
    @State var animalCellVM: AnimalCellViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text("FirstName LastName").foregroundColor(.gray)
            Text(animalCellVM.animal.firstName + " " + animalCellVM.animal.lastName ) .foregroundColor(.gray)
            Text("").foregroundColor(.gray)

            Text("Title").foregroundColor(.gray)
            TextField("title ", text: $animalCellVM.animal.title)
            Spacer()

            AsyncImage( url: URL(string: animalCellVM.animal.avatar),
                           content: { image in
                               image.resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxWidth: 300, maxHeight: 100)
                           },
                           placeholder: { Text("Loading ...") }
                        )
                       .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3)
                      
            Spacer()
            Text("Bio").foregroundColor(.gray)
            Text(animalCellVM.animal.bio).foregroundColor(.gray)
        }.padding()
            
        
        
    }
}
