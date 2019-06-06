//
//  StarshipsListViewModel.swift
//  TestSwiftUI
//
//  Created by Josep Escobar on 06/06/2019.
//  Copyright © 2019 Josep Escobar. All rights reserved.
//

import SwiftUI

class StarshipsListViewModel: NSObject, Identifiable {
    
    var starshipViewModel: [StarshipViewModel]
    var viewTitle: String
    
    override init() {
        self.starshipViewModel = []
        self.viewTitle = ""
    }
    
    init(starshipViewModel: [StarshipViewModel], viewTitle: String) {
        self.starshipViewModel = starshipViewModel
        self.viewTitle = viewTitle
    }

}
