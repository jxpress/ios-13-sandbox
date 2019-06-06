//
//  AppReducer.swift
//  Sampler
//
//  Created by jxpress on 2019/06/06.
//  Copyright © 2019 jxpress. All rights reserved.
//

import Combine
import Foundation
import SwiftyFlux

struct AppReducer: Reducer {

    func reduce(state: SampleState, action: Action) -> SampleState {
        var state = state
        switch action {
        case AppAction.selectSample(let sample):
            state.samples.append(sample)
        default:
            break
        }
        return state
    }
}
