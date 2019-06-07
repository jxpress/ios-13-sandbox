//
//  RootView.swift
//  Sampler
//
//  Created by jxpress on 2019/06/06.
//  Copyright © 2019 jxpress. All rights reserved.
//

import SwiftUI

struct RootView : View {

    @EnvironmentObject var state: AppState

    @State var route: String

    var body: some View {
        routing(with: route).showUp(state)
    }

    func routing(with route: String) -> some Screen & View {
        switch route {
        case "/":
            return SampleListScreen()
        default:
            fatalError()
        }
    }
}

#if DEBUG
struct RootView_Previews : PreviewProvider {
    static var previews: some View {
        RootView(route: "/")
            .environmentObject(AppState())
    }
}
#endif
