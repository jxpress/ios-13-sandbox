//
//  Screen.swift
//  Sampler
//
//  Created by moaible on 2019/06/06.
//  Copyright © 2019 jxpress. All rights reserved.
//

import SwiftUI

protocol Screen {
    func viewAppear()
    func viewDisappear()
}

extension View where Self : Screen {

    typealias ShowUp = _ModifiedContent<_ModifiedContent<_ModifiedContent<Self, _EnvironmentKeyWritingModifier<AppState?>>, _AppearanceActionModifier>, _AppearanceActionModifier>
    func showUp(_ state: AppState) -> ShowUp {
        let screen = self
        let environment = screen.environmentObject(state)
        return environment.onAppear {
            environment.content.viewAppear()
        }.onDisappear {
            environment.content.viewDisappear()
        }
    }
}
