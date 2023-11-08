//
//  SecondViewController.swift
//  lifecycle
//  ViewController Lifecycle
//  Created by siberianarg on 08.11.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func didReceiveMemoryWarning() {
        print("Warning! secondVC")
    }
    
    // MARK: 1 - Init
    init() {
        print("1. init secondVC")
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: 2 - loadView
    override func loadView() {
        print("2. loadView secondVC")
        view = CustomViewControllerView() as UIView
    }
    
    // MARK: 3 - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        print("3. viewDidLoad secondVC")
    }
    
    // MARK: 4 - viewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        print("4. viewWillAppear secondVC")
    }
    
    // MARK: 5 - viewWillLayoutSubviews
    override func viewWillLayoutSubviews() {
        print("5. viewWillLayoutSubviews secondVC")
    }
    
    // MARK: 6 - viewDidLayoutSubviews
    override func viewDidLayoutSubviews() {
        print("6. viewDidLayoutSubviews secondVC")
    }
    
    // MARK: 7 - viewDidAppear
    override func viewDidAppear(_ animated: Bool) {
        print("7. viewDidAppear secondVC")
    }
    
    // MARK: 8 - viewWillDisappear
    override func viewWillDisappear(_ animated: Bool) {
        print("8. viewWillDisappear secondVC")
    }
    
    // MARK: 9 - viewDidDisappear
    override func viewDidDisappear(_ animated: Bool) {
        print("9. viewDidDisappear secondVC")
    }
    
    // MARK: 10 - deinit
    deinit {
        print("10. deinit secondVC")
    }
}

class CustomViewControllerView: UIView { }

