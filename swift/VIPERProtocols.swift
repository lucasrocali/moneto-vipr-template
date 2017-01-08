//
// Created by AUTHOR
// Copyright (c) YEAR COMPANY. All rights reserved.
//

import Foundation

protocol VIPERViewProtocol: class {

    var presenter: VIPERPresenterProtocol? { get set }

    func setNavInfo(title:String?,leftBtnText:String?,rightBtnText:String?)
    func leftBtnClicked(_ sender:UIBarButtonItem)
    func rightBtnClicked(_ sender:UIBarButtonItem)

    // PRESENTER -> VIEW
}

protocol VIPERWireframeProtocol: class {

    func pushVIPERModule(fnview: AnyObject)

    //var somePopupWireframe : SomePopupWireframe? { get set }

    //func presentSomePopupView(fpresenter : VIPERPresenter)

    // PRESENTER -> WIREFRAME

}

protocol VIPERPresenterProtocol: class {
    var view: VIPERViewProtocol? { get set }
    var interactor: VIPERInteractorInputProtocol? { get set }
    var wireframe: VIPERWireframeProtocol? { get set }
    //var someRootWireframe : SomeRootWireframe? { get set }

    func leftBtnClicked()
    func rightBtnClicked()

    // VIEW -> PRESENTER
}

protocol VIPERInteractorOutputProtocol: class {
    // INTERACTOR -> PRESENTER
}

protocol VIPERInteractorInputProtocol: class {

    var presenter: VIPERInteractorOutputProtocol? { get set }

    //PRESENTER -> INTERACTOR
}
/*
protocol SomePopupDelegate {
    func someFunctionFromSomePopup()
}
*/
