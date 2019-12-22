//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Petrina on 22.12.19.
//  Copyright © 2019 Ralitsa Petrina. All rights reserved.
//

import SwiftUI
import Combine


class UpdateStore : ObservableObject {
    @Published var updates: [Update] = updateData
}

