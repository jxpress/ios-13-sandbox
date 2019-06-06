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

    @State var routing: String

    var body: some View {
        List {
            Button(action: selectSample) {
                Text("Sample")
            }
        }
    }

    func selectSample() {
        self.state.dispatch(action: AppAction.selectSample(.init(name: "sample")))
    }
}

#if DEBUG
struct RootView_Previews : PreviewProvider {
    static var previews: some View {
        RootView(routing: "/")
            .environmentObject(AppState())
    }
}
#endif
