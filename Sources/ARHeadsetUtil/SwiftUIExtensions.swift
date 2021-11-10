//
//  SwiftUIExtensions.swift
//  ARHeadsetUtil
//
//  Created by Philip Turner on 8/23/21.
//

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13, macOS 10.15, tvOS 13, watchOS 6, *)
public extension ScrollView {
    
    @inlinable @inline(__always)
    func fixFlickering() -> some View {
        fixFlickering { $0 }
    }
    
    @inlinable
    func fixFlickering<T: View>(@ViewBuilder configurator: @escaping (ScrollView<AnyView>) -> T) -> some View {
        GeometryReader { geometryWithSafeArea in
            GeometryReader { _ in
                configurator(
                ScrollView<AnyView>(axes, showsIndicators: showsIndicators) {
                    AnyView(
                        VStack {
                            content
                        }
                        .padding(.top, geometryWithSafeArea.safeAreaInsets.top)
                        .padding(.bottom, geometryWithSafeArea.safeAreaInsets.bottom)
                        .padding(.leading, geometryWithSafeArea.safeAreaInsets.leading)
                        .padding(.trailing, geometryWithSafeArea.safeAreaInsets.trailing)
                    )
                })
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
    
}

#endif
