//
//  TestWireframe.swift
//  RxSwiftTraining
//
//  Created by Shumpei Nagata on 04/03/2021.
//  Copyright 2021 Shumpei Nagata. All rights reserved.
//

import UIKit

protocol TestWireframeProtocol {
}

final class TestWireframe {
    private weak var view: TestViewController?

    init(view: TestViewController) {
        self.view = view
    }
}

extension TestWireframe: TestWireframeProtocol {
}
