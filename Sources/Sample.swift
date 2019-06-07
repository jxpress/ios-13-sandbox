//
//  Sample.swift
//  Sampler
//
//  Created by jxpress on 2019/06/06.
//  Copyright © 2019 jxpress. All rights reserved.
//

import Foundation
import SwiftUI

struct Sample : Identifiable {
    
    typealias ID = String
    var id: String {
        return name
    }
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
