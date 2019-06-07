//
//  SampleListScreen.swift
//  Sampler
//
//  Created by moaible on 2019/06/06.
//  Copyright © 2019 jxpress. All rights reserved.
//

import SwiftUI

struct SampleListScreen : View, Screen {

    enum ScreenState {
        case empty
        case fetched
    }

    @EnvironmentObject var state: AppState

    var screenState: ScreenState {
        if state.sample.samples.isEmpty {
            return .empty
        }
        return .fetched
    }

    var body: some View {
        NavigationView {
            content
                .environmentObject(state)
                .navigationBarTitle(Text("Sampler"))
        }
    }

    var content: some View {
        return Group {
            if screenState == .empty {
                SampleListContentEmptyView(message: "empty")
            } else {
                SampleListContentView()
            }
        }
    }

    func viewAppear() {
        print("test")
    }
    
    func viewDisappear() {
        print("disappeared")
    }
}

#if DEBUG
struct SampleListScreen_Previews : PreviewProvider {
    static var previews: some View {
        let state = AppState()
        state.sample.samples = (0 ... 100).map {
            Sample(name: "sample \($0)")
        }
        return SampleListScreen().showUp(state)
    }
}
#endif
