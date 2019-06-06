//
//  StorageData.swift
//  TestSwiftUI
//
//  Created by Josep Escobar on 04/06/2019.
//  Copyright © 2019 Josep Escobar. All rights reserved.
//

import SwiftUI

class StarshipViewModel: NSObject, Identifiable {
    
    var name: String
    
    init(name: String?) {
        self.name = name ?? "No name"
    }

}
