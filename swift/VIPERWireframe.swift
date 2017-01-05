//
// Created by AUTHOR
// Copyright (c) YEAR COMPANY. All rights reserved.
//

import Foundation

class VIPERWireframe: VIPERWireframeProtocol {

    let VIPERViewControllerIdentifier = "VIPERViewController"

    //var somePopupWireframe : SomePopupWireframe?
    
    func pushVIPERModule(fromNavView fnview: AnyObject) {
        //MODULE COMPONENTS
        let view: VIPERViewProtocol = getVIPERViewController()
        let presenter: VIPERPresenterProtocol & VIPERInteractorOutputProtocol = VIPERPresenter()
        let interactor: VIPERInteractorInputProtocol = VIPERInteractor()

        //POPUPWIREFRAMES

        //let somePopupWireframe = SomePopupWireFrame()

        //CONNECTING
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = self
        //presenter.someRootWireframe = SomeRootWireframe.sharedInstance
        presenter.interactor = interactor
        interactor.presenter = presenter

        let VIPERVC = view as! UIViewController
        fnview.pushViewController(VIPERVC, animated: true)
        
    }

    func getVIPERViewController() -> VIPERViewController {
        let storyboard = someStoryboard()
        let VIPERVC: VIPERViewController = storyboard.instantiateViewController(withIdentifier: VIPERViewControllerIdentifier) as! VIPERViewController
        return VIPERVC
    }

    /*
     func presentSomePopupView(fpresenter : VIPERPresenter) {
     
     }
     */


}
