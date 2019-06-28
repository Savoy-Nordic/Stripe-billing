// Copyright (c) 2014-present, Facebook, Inc. All rights reserved.
//
// You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
// copy, modify, and distribute this software in source code or binary form for use
// in connection with the web services and APIs provided by Facebook.
//
// As with any software that integrates with the Facebook platform, your use of
// this software is subject to the Facebook Developer Principles and Policies
// [http://developers.facebook.com/policy/]. This copyright notice shall be
// included in all copies or substantial portions of the software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

@testable import FacebookCore
import Foundation

enum SampleRemoteAppLinkTarget {
  static func valid(
    url: URL? = SampleURL.valid,
    appIdentifier: String = "1",
    appName: String = "Foo",
    shouldFallback: Bool? = nil
    ) -> Remote.AppLinkTarget {
    return Remote.AppLinkTarget(
      url: url,
      appIdentifier: appIdentifier,
      appName: appName,
      shouldFallback: shouldFallback
    )
  }

  static let missingURL = Remote.AppLinkTarget(
    url: nil,
    appIdentifier: "1",
    appName: "Foo",
    shouldFallback: nil
  )
}
