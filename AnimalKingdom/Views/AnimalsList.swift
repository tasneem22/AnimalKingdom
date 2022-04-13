//
//  AnimalsList.swift
//
//  Created by Tasneem Toolba on 06.04.2022.
//

import SwiftUI

struct AnimalsList: View {
    @ObservedObject var animalListVM = AnimalListViewModel ()
    
    var body: some View {
            NavigationView {
                List(animalListVM.animalCellViewModels) { animalCellVM in
                    AnimalCell(animalCellVM: animalCellVM)
                }
                .navigationTitle("Animals List")
            }
    }
}




struct AnimalsList_Previews: PreviewProvider {
    static var previews: some View {
        AnimalsList()
    }
}


struct AnimalCell: View{
    @ObservedObject var animalCellVM: AnimalCellViewModel
    var body: some View{
        HStack{
            NavigationLink(
                destination: AnimalDetails(animalCellVM: animalCellVM),
                label: {
                    VStack(alignment: .leading){
                        Text(animalCellVM.animal.firstName + " " + animalCellVM.animal.lastName)
                        .font(.system(size: 20, weight: .bold, design: .rounded))
           
                    }
                })
        }
    }
}
