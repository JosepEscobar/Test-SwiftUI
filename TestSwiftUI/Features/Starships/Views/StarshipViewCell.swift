//
//  ContentViewCell.swift
//  TestSwiftUI
//
//  Created by Josep Escobar on 04/06/2019.
//  Copyright © 2019 Josep Escobar. All rights reserved.
//

import SwiftUI

struct StarshipViewCell: View {
    var viewModel: StarshipViewModel
    var body: some View {
        Text(verbatim: viewModel.name)
    }
}

#if DEBUG
struct ContentViewCell_Previews : PreviewProvider {
    static var previews: some View {
        StarshipViewCell(viewModel: StarshipViewModel(name: "TEST"))
    }
}
#endif
