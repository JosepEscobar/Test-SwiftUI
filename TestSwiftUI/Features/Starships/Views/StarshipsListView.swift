//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Josep Escobar on 04/06/2019.
//  Copyright © 2019 Josep Escobar. All rights reserved.
//

import SwiftUI

struct StarshipsView : View {
    
    @EnvironmentObject var viewModel: StarshipsListViewModel
    
    var body: some View {
        // NavigationController
        NavigationView {
            // Tabla
            List{
                //Iteración
                ForEach(viewModel.starshipViewModelArray) { starshipViewModel in
                    StarshipViewCell(viewModel: starshipViewModel)
                }
            }.navigationBarTitle(Text(viewModel.viewTitle), displayMode: .large)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        StarshipsView().environmentObject(StarshipsListViewModel())
    }
}
#endif




