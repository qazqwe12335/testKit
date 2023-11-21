//
//  StyledLabel.swift
//  
//
//  Created by 開發人員張軒瑋 on 2023/11/21.
//

import UIKit

final public class StyledLabel: StyledBaseView {
    public var content: String = "" {
        didSet {
            contentLabel.text = content.isEmpty ? " " : content
        }
    }
    
    public var isHiddenDividerLine: Bool = false {
        didSet {
            dividerLineView.isHidden = isHiddenDividerLine
            contentLabel.textColor = isHiddenDividerLine ? Styled.Color.textDark : Styled.Color.textNormal
        }
    }

    
    private lazy var dividerLineView: UIView = {
        let view = UIView()
        view.backgroundColor = Styled.Color.divider
        return view
    }()
    
    override public init() {
        super.init()
        initView()
    }
    
    required public init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func initView() {
        super.initView()
        addArrangedSubview(titleLabel)
        addArrangedSubview(contentLabel)
        addArrangedSubview(dividerLineView)
        dividerLineView.translatesAutoresizingMaskIntoConstraints = false
        dividerLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}
