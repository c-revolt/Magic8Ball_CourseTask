//
//  Assembly.swift
//  Magic8Ball_CourseTask
//
//  Created by Александр Прайд on 31.10.2022.
//

import UIKit

protocol Assembly {
    static func createMainModule() -> UIViewController
}

class AssemblyBuilder: Assembly {
    
    static func createMainModule() -> UIViewController {
        let model = Answer(answerString: K.ball5)
        let view = MainViewController()
        let presenter = MainPresenter(view: view, model: model)
        
        view.presenter = presenter
        
        return view
    }
}
