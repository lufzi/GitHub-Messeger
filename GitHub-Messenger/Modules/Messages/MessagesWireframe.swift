//
//  MessagesWireframe.swift
//  GitHub-Messenger
//
//  Created by Luqman Fauzi on 4/3/2020.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class MessagesWireframe: BaseWireframe {

    // MARK: - Private properties -

    // MARK: - Module setup -

    init(user: User) {
        let moduleViewController = MessagesViewController(user: user)
        super.init(viewController: moduleViewController)

        let interactor = MessagesInteractor()
        let presenter = MessagesPresenter(view: moduleViewController, interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension MessagesWireframe: MessagesWireframeInterface {
}