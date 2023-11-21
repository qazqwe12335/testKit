//
//  File.swift
//  
//
//  Created by 開發人員張軒瑋 on 2023/11/21.
//

import Foundation
import UIKit

class Styled {
    //  系統主題
    enum Mode: String {
        case Purple
        case SkyBlue
        case LightPink
        case SandyBrown
        case OliveDrab
    }
    
    //  圓角
    enum CornerRadius {
        /// CornerRadius: 12
        static let normal = CGFloat.init(12.0)
    }
    
    //  字體大小
    enum FontSize {
        /// FontSize: 28
        static let xxl = CGFloat.init(28.0)
        /// FontSize: 20
        static let xl = CGFloat.init(20.0)
        /// FontSize: 18
        static let lg = CGFloat.init(18.0)
        /// FontSize: 16
        static let md = CGFloat.init(16.0)
        /// FontSize: 14
        static let sm = CGFloat.init(14.0)
        /// FontSize: 12
        static let xs = CGFloat.init(12.0)
        /// FontSize: 10
        static let xxs = CGFloat.init(10.0)
    }
    
    //  系統色代碼
    static let SystemColor: [Styled.Mode: UIColor] = [
        .Purple: UIColor(hex: 0x8779FF),
        .SkyBlue: UIColor(hex: 0x87CEEB),
        .LightPink: UIColor(hex: 0xFFB6C1),
        .SandyBrown: UIColor(hex: 0xF4A460),
        .OliveDrab: UIColor(hex: 0x8AB432),
    ]
    
    //  系統副色代碼
    static let SystemMinorColor: [Styled.Mode: UIColor] = [
        .Purple: UIColor(hex: 0xF3F2FF),
        .SkyBlue: UIColor(hex: 0xF3FAFD),
        .LightPink: UIColor(hex: 0xFFF8F9),
        .SandyBrown: UIColor(hex: 0xFEF6EF),
        .OliveDrab: UIColor(hex: 0xF3F7EA),
    ]
    
    ///  元件顏色
    enum Color {
        ///  字體顏色
        static let textDark = UIColor(hex: 0x000000)
        static let textNormal = UIColor(hex: 0x959595)
        static let textLight = UIColor(hex: 0xC5C5C5)
        static let danger = UIColor(hex: 0xFF0000)
        ///
        static let subTitle = UIColor(hex: 0x808080)
        static let dadaReplyText = UIColor(hex: 0x666666)
        static let midGrey = UIColor(hex: 0x666666)
        ///  分隔線
        static let divider = UIColor(hex: 0xE3E3E3)
        ///  背景底
        static let appBackGround = UIColor(hex: 0xF7F7F7)
        ///  按鈕鎖定顏色
        static let buttonDisable = UIColor(hex: 0xC5C5C5)
        ///  警示顏色
        static let emergency = UIColor(hex: 0xFF0000)
        
//        static var main: UIColor {
//            get {
//                switch System.shared.getStyled() {
//                case .Purple:
//                    return SystemColor[.Purple] ?? .clear
//                case .SkyBlue:
//                    return SystemColor[.SkyBlue] ?? .clear
//                case .LightPink:
//                    return SystemColor[.LightPink] ?? .clear
//                case .SandyBrown:
//                    return SystemColor[.SandyBrown] ?? .clear
//                case .OliveDrab:
//                    return SystemColor[.OliveDrab] ?? .clear
//                }
//            }
//        }
//
//        static var minor: UIColor {
//            get {
//                switch System.shared.getStyled() {
//                case .Purple: return SystemMinorColor[.Purple] ?? .clear
//                case .SkyBlue: return SystemMinorColor[.SkyBlue] ?? .clear
//                case .LightPink: return SystemMinorColor[.LightPink] ?? .clear
//                case .SandyBrown: return SystemMinorColor[.SandyBrown] ?? .clear
//                case .OliveDrab: return SystemMinorColor[.OliveDrab] ?? .clear
//                }
//            }
//        }
//
//        static var mainContrast: UIColor {
//            get {
//                switch System.shared.getStyled() {
//                case .Purple:
//                    return .init(hex: 0xF79E18)
//                case .SkyBlue:
//                    return .init(hex: 0xFF865F)
//                case .LightPink:
//                    return .init(hex: 0xAB7C89)
//                case .SandyBrown:
//                    return .init(hex: 0x735E51)
//                case .OliveDrab:
//                    return .init(hex: 0x014023)
//                }
//            }
//        }
    }
}
