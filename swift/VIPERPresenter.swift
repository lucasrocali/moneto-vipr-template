//
// Created by AUTHOR
// Copyright (c) YEAR COMPANY. All rights reserved.
//

import Foundation

class VIPERPresenter: VIPERPresenterProtocol, VIPERInteractorOutputProtocol {
    
    weak var view: VIPERViewProtocol?
    var interactor: VIPERInteractorInputProtocol?
    var wireframe: VIPERWireframeProtocol?
    //var someRootWireframe : SomeRootWireframe? { get set }

    init() {}

    func leftBtnClicked() {

    }

    func rightBtnClicked() {

    }

}
