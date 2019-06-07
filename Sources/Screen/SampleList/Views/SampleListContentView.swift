//
//  SampleListContentView.swift
//  Sampler
//
//  Created by moaible on 2019/06/06.
//  Copyright © 2019 jxpress. All rights reserved.
//

import SwiftUI

struct SampleListContentView : View {

    @EnvironmentObject var state: AppState
    
    var body: some View {
        List {
            ForEach(samples) { sample in
                Button(action: self.select(with: sample)) {
                    Text("Sample \(sample.name)")
                }
            }
        }
    }

    func select(with sample: Sample) -> () -> Void {
        return {
            self.state.dispatch(action:
                AppAction.selectSample(sample))
        }
    }

    private var samples: [Sample] {
        get {
            return state.sample.samples
        }
        set {
            state.sample.samples = newValue
        }
    }
}

#if DEBUG
struct SampleListContentView_Previews : PreviewProvider {
    static var previews: some View {
        let state = AppState()
        state.sample.samples = (0 ... 100).map {
            Sample(name: "sample \($0)")
        }
        return SampleListContentView().environmentObject(state)
    }
}
#endif
