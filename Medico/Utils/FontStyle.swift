//
//  FontStyle.swift
//  Medico
//
//  Created by KUH-DakerMakkah on 12/05/20.
//  Copyright © 2020 ECBN. All rights reserved.
//
import SwiftUI

struct FontNameManager {
    //MARK: name of font family
    struct Poppins {
        static let medium = "Poppins-Medium" //100
        static let regular = "Poppins-Regular" //101
        static let semiBold = "Poppins-SemiBold" //102
        static let bold = "Poppins-Bold" //103
        static let light = "Poppins-Light" //104
        // add rest of the font style names
    }
    struct Montserrat {
        static let bold = "Montserrat-Bold"
    }
    
    // ... structs for other typefaces
}

struct PoppinsSB: ViewModifier {
    @State var fontSize : CGFloat = 14
    @State var foreground = Color.white
    func body(content: Content) -> some View {
        content
            .foregroundColor(foreground)
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: fontSize))
    }
}

struct TextStyle7: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(26)
            .foregroundColor(Color.white)
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 17))
    }
}

struct TextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(21)
            .foregroundColor(Color.white)
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 14))
    }
}

struct TextStyle6: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(21)
            .foregroundColor(Color.init("greyishBrown"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 14))
    }
}


struct TextStyle11: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(21)
            .foregroundColor(Color.init("charcoalGrey"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 14))
    }
}

struct TextStyle3: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(21)
            .foregroundColor(Color.init("twilight"))
            .font(Font.custom(FontNameManager.Poppins.medium, size: 14))
            .frame(alignment: .center)
    }
}

struct TextStyle18: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(21)
            .foregroundColor(Color.init("dark"))
            .font(Font.custom(FontNameManager.Poppins.medium, size: 14))
    }
}

struct TextStyle4: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(21)
            .foregroundColor(Color.init("greyishBrown"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 14))
    }
}

struct TextStyle5: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(21)
            .foregroundColor(Color.init("blueGrey"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 14))
    }
}

struct TextStyle10: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(21)
            .foregroundColor(Color.init("lightishBlue"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 14))
    }
}

struct TextStyle12: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(18)
            .foregroundColor(Color.init("lightishBlue"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 12))
    }
}

struct TextStyle13: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(18)
            .foregroundColor(Color.init("twilight"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 12))
    }
}
struct TextStyle19: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(18)
            .foregroundColor(Color.init("lightishBlue"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 12))
    }
}

struct TextStyle20: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(18)
            .foregroundColor(Color.init("dark"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 12))
    }
}

struct TextStyle2: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init("blueGrey"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 12))
            .frame(alignment: .center)
    }
}

struct TextStyle9: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(18)
            .foregroundColor(Color.init("dark"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 12))
    }
}

struct TextStyle14: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(16)
            .foregroundColor(Color.init("dark"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 10))
    }
}

struct TextStyle16: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(16)
            .foregroundColor(Color.init("charcoalGrey"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 10))
    }
}

struct TextStyle21: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(16)
            .foregroundColor(Color.init("macaroniAndCheese"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 10))
    }
}

struct TextStyle8: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(16)
            .foregroundColor(Color.init("blueGrey"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 10))
    }
}

struct MenuSubtitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.leading)
            .lineSpacing(4)
            .foregroundColor(Color.init("blueGrey"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 10))
    }
}

struct TextStyle17: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(16)
            .foregroundColor(Color.init("blueGrey"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 10))
    }
}


struct TextStyle22: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(16)
            .foregroundColor(Color.init("dark"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 10))
    }
}

struct TextStyle15: ViewModifier {
    func body(content: Content) -> some View {
        content
//            .lineSpacing(13)
            .foregroundColor(Color.init("blueGrey"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 9))
    }
}
struct TextStyle24: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(21)
            .foregroundColor(Color.init("veryLightPink"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 14))
    }
}

struct TextStyle25: ViewModifier {
    func body(content: Content) -> some View {
        content
            .lineSpacing(26)
            .foregroundColor(Color.init("white"))
            .font(Font.custom(FontNameManager.Poppins.bold, size: 17))
    }
}

struct TextStyle26: ViewModifier {
    func body(content: Content) -> some View {
        content
//            .lineSpacing(26)
            .foregroundColor(Color.init("white"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 10))
    }
}
struct TextStyle27: ViewModifier {
    func body(content: Content) -> some View {
        content
//            .lineSpacing(26)
            .foregroundColor(Color.init("twilight"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 13))
    }
}

struct TextStyle28: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init("black"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 10))
    }
}

struct TextStyle23: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init("black"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 10))
    }
}

struct TextStyle29: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init("blueGrey"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 12))
    }
}
struct TextStyle30: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init("white"))
            .font(Font.custom(FontNameManager.Poppins.medium, size: 12))
    }
}
struct TextStyle31: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init("white"))
            .font(Font.custom(FontNameManager.Poppins.regular, size: 12))
    }
}
struct TextStyle32: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init("white"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 12))
    }
}

struct TextStyle33: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init("charcoalGrey"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 20))
    }
}


struct TextStyle34: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init("charcoalGrey"))
            .font(Font.custom(FontNameManager.Poppins.light, size: 14))
    }
}
struct TextStyle35: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.init("dark"))
            .font(Font.custom(FontNameManager.Poppins.semiBold, size: 17))
    }
}

















