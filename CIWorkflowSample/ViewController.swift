//
//  ViewController.swift
//  CIWorkflowSample
//
//  Created by Kosuke Matsuda on 2017/05/02.
//  Copyright © 2017年 matsuda. All rights reserved.
//

import UIKit
import Unbox

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.global().async { [unowned self] in
            self.requestJSON()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

private extension ViewController {
    func requestJSON() {
        guard let json = Mock.load(name: "user") as? [String: Any] else {
            return
        }
        do {
            let user: User = try unbox(dictionary: json)
            print(user)
        } catch {
            print(error)
        }
    }
}
