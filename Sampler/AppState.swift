//
//  AppState.swift
//  Sampler
//
//  Created by jxpress on 2019/06/06.
//  Copyright © 2019 jxpress. All rights reserved.
//

import Combine
import Foundation
import SwiftUI
import SwiftyFlux

let store = AppState()

final class AppState: BindableObject {

    var didChange = PassthroughSubject<AppState, Never>()

    var sample: SampleState

    init(sample: SampleState = SampleState()) {
        self.sample = sample
    }

    func dispatch(action: Action) {
        sample = AppReducer().reduce(state: sample, action: action)
        didChange.send(self)
    }
}

struct SampleState: SwiftyFlux.State {
    var samples: [Sample] = []
}
