//
// Created by AUTHOR
// Copyright (c) YEAR COMPANY. All rights reserved.
//

import Foundation

class VIPERPresenter: VIPERPresenterProtocol, VIPERInteractorOutputProtocol {
    
    weak var view: VIPERViewProtocol? {
        didSet {
            if let view = view {
                view.setNavInfo(title: "", leftBtnText: "",rightBtnText: "")

            }
        }
    }

    var interactor: VIPERInteractorInputProtocol?
    var wireframe: VIPERWireframeProtocol?
    //var someRootWireframe : SomeRootWireframe? 

    init() {}

    func leftBtnClicked() {

    }

    func rightBtnClicked() {

    }

}
