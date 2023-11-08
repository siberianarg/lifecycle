//
//  ViewController.swift
//  lifecycle
//
//  Created by siberianarg on 08.11.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - UI
    
    private lazy var openSecondVCButton: UIButton = {
        
        $0.backgroundColor = .systemRed
        $0.setTitle("Open Second VC", for: .normal)
        $0.layer.cornerRadius = 14
        $0.titleLabel?.font = UIFont(name: "arial", size: 20)
        $0.tintColor = .systemGray5
        $0.addTarget(self, action: #selector(openButtonDidPressed), for: .touchUpInside)
        
        return $0
    }(UIButton(type: .system))
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
    
    // MARK: - Setup Views
    
    private func setupViews() {
        view.backgroundColor = .blue
        
        view.addSubview(openSecondVCButton)
        
        openButtonDidPressed()
    }
    
    @objc private func openButtonDidPressed() {
        present(SecondViewController(), animated: true)
    }
    
    // MARK: - Setup Constraints
    
    private func setupConstraints() {
        openSecondVCButton.snp.makeConstraints {
            $0.leading.trailing.bottom.equalToSuperview().inset(50)
            $0.height.equalTo(50)
        }
    }


}

