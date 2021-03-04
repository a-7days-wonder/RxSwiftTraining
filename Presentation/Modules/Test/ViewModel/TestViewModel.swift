//
//  TestViewModel.swift
//  RxSwiftTraining
//
//  Created by Shumpei Nagata on 04/03/2021.
//  Copyright 2021 Shumpei Nagata. All rights reserved.
//

import Domain
import RxSwift

protocol TestViewModelProtocol {
    var input: TestViewModelInputProtocol { get }
    var output: TestViewModelOutputProtocol { get }
}

protocol TestViewModelInputProtocol {
}

protocol TestViewModelOutputProtocol {
}

final class TestViewModel: TestViewModelProtocol {
    private let wireframe: TestWireframeProtocol
    let input: TestViewModelInputProtocol
    let output: TestViewModelOutputProtocol

    init<Wireframe: TestWireframeProtocol>(wireframe: Wireframe) {
        self.wireframe = wireframe
        input = Input()
        output = Output()
    }
}

extension TestViewModel {
    private struct Input: TestViewModelInputProtocol {
    }

    private struct Output: TestViewModelOutputProtocol {
    }
}