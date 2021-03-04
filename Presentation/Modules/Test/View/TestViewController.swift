//
//  TestViewController.swift
//  RxSwiftTraining
//
//  Created by Shumpei Nagata on 04/03/2021.
//  Copyright 2021 Shumpei Nagata. All rights reserved.
//

import Domain
import RxCocoa
import RxSwift
import UIKit

public final class TestViewController: UIViewController {
    private var viewModel: TestViewModelProtocol!
    private let disposeBag = RxSwift.DisposeBag()

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var button: UIButton!

    // NOTE: BehaviorRelayとはなんなんだ Observableとはどう違う?
    private let count: RxRelay.BehaviorRelay<Int> = .init(value: 0)

    public override func viewDidLoad() {
        super.viewDidLoad()
        bindInput()
        bindOutput()
    }

    func inject<ViewModel: TestViewModelProtocol>(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
}

extension TestViewController {
    private func bindInput() {
        button.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.incrementCount()
            })
            .disposed(by: disposeBag)
    }

    private func bindOutput() {
        count.asObservable()
            .subscribe(onNext: { [weak self] count in
                self?.label.text = count.description
            })
            .disposed(by: disposeBag)
    }
}

extension TestViewController {
    private func incrementCount() {
        count.accept(count.value + 1)
    }
}
