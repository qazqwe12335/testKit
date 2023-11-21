//
//  StyledBaseView.swift
//  
//
//  Created by 開發人員張軒瑋 on 2023/11/21.
//

import UIKit

open class StyledBaseView: UIStackView {
    
    public lazy var isEnabled: Bool = true {
        didSet {
            let textColor: UIColor = isEnabled ? Styled.Color.textDark : Styled.Color.textNormal
            textField.clearButtonMode = isEnabled ? .always : .never
            textField.isEnabled = isEnabled
            textField.textColor = textColor
        }
    }
    
    public lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: Styled.FontSize.sm)
        label.textColor = Styled.Color.textNormal
        label.numberOfLines = 0
        return label
    }()
    ///Label
    public lazy var contentLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: Styled.FontSize.lg)
        label.textColor = Styled.Color.textNormal
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 0
        label.text = " "
        return label
    }()
    ///textField
    public lazy var textField: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: Styled.FontSize.lg)
        textField.textColor = Styled.Color.textDark
        textField.tintColor = Styled.Color.textDark
        textField.clearButtonMode = .always
//        textField.delegate = self
        return textField
    }()
    ///textView
    public lazy var placeHolderLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: Styled.FontSize.md)
        label.textColor = Styled.Color.textLight
        label.text = "請輸入..."
        label.isHidden = true
        return label
    }()
    
    public lazy var textView: UITextView = {
        let textView = UITextView()
        textView.font = .systemFont(ofSize: Styled.FontSize.md)
        textView.tintColor = Styled.Color.textDark
//        textView.setInputAccessoryView()
        textView.isScrollEnabled = false
//        textView.delegate = self
        return textView
    }()
    
    private lazy var dividerLineView: UIView = {
        let view = UIView()
        view.backgroundColor = Styled.Color.divider
        return view
    }()
    
    public init() {
        super.init(frame: .zero)
    }
    
    required public init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func initView() {
        self.axis = .vertical
        self.spacing = 5
    }
    
    public func initDividerLine() {
        addArrangedSubview(dividerLineView)
        dividerLineView.translatesAutoresizingMaskIntoConstraints = false
        dividerLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
//    func setInputAccessoryView() {
//
//        let fieldToolBar: UIToolbar = {
//            let doneButton = UIBarButtonItem(title: Translate.shared.getTranslateText(.general_OK), style: .done, target: self, action: #selector(inputAccessoryDoneAction))
//            let closeButton = UIBarButtonItem(title: Translate.shared.getTranslateText(.general_clear), style: .plain, target: self, action: #selector(inputAccessoryClearAction))
//            let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//
//            let toolBar = UIToolbar()
//            toolBar.sizeToFit()
//
//            toolBar.setItems([closeButton, spaceButton, doneButton], animated: false)
//            toolBar.isUserInteractionEnabled = true
//            return toolBar
//        }()
//
//        self.inputAccessoryView = fieldToolBar
//    }
//
//    @objc func inputAccessoryDoneAction() {
//        self.endEditing(true)
//    }
//
//    @objc func inputAccessoryClearAction() {
//        self.text = ""
//    }
}
