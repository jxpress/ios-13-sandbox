//
//  SampleListContentEmptyView.swift
//  Sampler
//
//  Created by moaible on 2019/06/06.
//  Copyright © 2019 jxpress. All rights reserved.
//

import SwiftUI

struct SampleListContentEmptyView : View {

    @EnvironmentObject var state: AppState
    @State var message: String

    var body: some View {
        Text(message)
    }
}

#if DEBUG
struct SampleListContentEmptyView_Previews : PreviewProvider {
    static var previews: some View {
        SampleListContentEmptyView(
            message: "On Preview")
            .environmentObject(AppState())
    }
}
#endif
