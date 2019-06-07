//
//  AppAction.swift
//  Sampler
//
//  Created by jxpress on 2019/06/06.
//  Copyright © 2019 jxpress. All rights reserved.
//

import Foundation
import SwiftyFlux

enum AppAction: Action {
    case fetchSample
    case selectSample(Sample)
}
