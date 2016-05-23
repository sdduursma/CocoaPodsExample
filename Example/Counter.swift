//
//  Counter.swift
//  Example
//
//  Created by Samuel Duursma on 23/05/16.
//  Copyright © 2016 Samuel Duursma. All rights reserved.
//

import ReactiveCocoa
import Result

class Counter {

    var count = 0

    let increaseObserver: Observer<(), NoError>

    init() {
        let (increaseSignal, increaseObserver) = Signal<(), NoError>.pipe()
        self.increaseObserver = increaseObserver

        increaseSignal.observeNext { [unowned self] in
            self.count += 1
        }
    }
}
