//
//  StarshipRepository.swift
//  TestSwiftUI
//
//  Created by Josep Escobar on 06/06/2019.
//  Copyright © 2019 Josep Escobar. All rights reserved.
//

import SwiftUI

var starshipViewModelDataSourceArray: [StarshipViewModel] = getStarships()

func getStarships() -> [StarshipViewModel]  {
    
    #if DEBUG
        return getMockingData()
    #endif
    
    // TODO : Call to service
    return []
    
}

func getMockingData() -> [StarshipViewModel]  {
    
    var starshipViewModelMockArray: [StarshipViewModel] = []
    let names: [String] = ["La nave mes xunga del mon", "Interestellar", "OMG My nave", "Tu nave"]
    
    for name in names {
        starshipViewModelMockArray.append(StarshipViewModel(name: name))
    }

    return starshipViewModelMockArray
}
