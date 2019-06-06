//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Josep Escobar on 04/06/2019.
//  Copyright © 2019 Josep Escobar. All rights reserved.
//

import SwiftUI

struct StarshipsView : View {
    
    var viewModel = StarshipsListViewModel()
    
    var body: some View {
        // NavigationController
        NavigationView {
            // Tabla
            List{
                //Iteración
                ForEach(viewModel.starshipViewModel) { starshipViewModel in
                    StarshipViewCell(viewModel: starshipViewModel)
                }
            }.navigationBarTitle(Text("Starship"), displayMode: .large)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        let starshipViewModel1 = StarshipViewModel(name: "000233")
        let starshipViewModel2 = StarshipViewModel(name: "000233")
        
        let starshipViewModel: [StarshipViewModel] = [starshipViewModel1, starshipViewModel2]
        
        let viewTitle: String = "Hola mundo"
        
        let viewModelMock = StarshipsListViewModel(starshipViewModel: starshipViewModel, viewTitle: viewTitle)
        
        return StarshipsView(viewModel: viewModelMock)
    }
}
#endif



