//
//  TestBuilder.swift
//  RxSwiftTraining
//
//  Created by Shumpei Nagata on 04/03/2021.
//  Copyright 2021 Shumpei Nagata. All rights reserved.
//

import Domain
import MySwiftExtensions

public enum TestBuilder {
    public static func build() -> TestViewController {
        let view = TestViewController.ex.instantiate()
        let wireframe = TestWireframe(view: view)
        let viewModel = TestViewModel(wireframe: wireframe)
        view.inject(viewModel: viewModel)
        return view
    }
}
