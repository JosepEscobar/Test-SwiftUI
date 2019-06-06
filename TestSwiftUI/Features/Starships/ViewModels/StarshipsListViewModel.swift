//
//  StarshipsListViewModel.swift
//  TestSwiftUI
//
//  Created by Josep Escobar on 06/06/2019.
//  Copyright © 2019 Josep Escobar. All rights reserved.
//

import SwiftUI
import Combine

class StarshipsListViewModel: BindableObject {
    
    let didChange = PassthroughSubject<StarshipsListViewModel, Never>()
    
    
    var starshipViewModel: [StarshipViewModel] = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    var viewTitle: String = "Starships" {
        didSet {
            didChange.send(self)
        }
    }

}
