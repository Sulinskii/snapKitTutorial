//
//  ViewController.swift
//  snapKitTutorial
//
//  Created by Artur Sulinski on 19/02/2019.
//  Copyright © 2019 Artur Sulinski. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {

    private let yellowView = SnapKitComponentView(backgroundColor: UIColor.yellow.withAlphaComponent(0.8), title: "")
    private let greenView = SnapKitComponentView(backgroundColor: UIColor.green.withAlphaComponent(0.8), title: "")
    private let lightGrayView = SnapKitComponentView(backgroundColor: UIColor.lightGray.withAlphaComponent(0.8), title: "")
    private let brownView = SnapKitComponentView(backgroundColor: UIColor.brown.withAlphaComponent(0.8), title: "")

    override func loadView() {
        super.loadView()
        setupView()
    }


    private func setupView() {
        addSubviews()
        applyConstraints()
    }

    private func addSubviews() {
        view.addSubview(yellowView)
        view.addSubview(greenView)
        view.addSubview(lightGrayView)
        view.addSubview(brownView)
    }

    private func applyConstraints() {
        greenView.snp.makeConstraints{
            make in
            make.left.equalToSuperview().offset(50)
            make.centerY.equalToSuperview().offset(-100)
            make.height.width.equalTo(100)
        }
        yellowView.snp.makeConstraints{
            make in
            make.right.equalToSuperview().offset(-50)
            make.centerY.equalToSuperview().offset(-100)
            make.height.width.equalTo(100)
        }
        lightGrayView.snp.makeConstraints{
            make in
            make.right.equalToSuperview().offset(-50)
            make.centerY.equalToSuperview().offset(100)
            make.height.width.equalTo(100)
        }
        brownView.snp.makeConstraints{
            make in
            make.left.equalToSuperview().offset(50)
            make.centerY.equalToSuperview().offset(100)
            make.height.width.equalTo(100)
        }
    }


}

