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

import Foundation

enum GraphRequestConnectionError: FBError, CaseIterable {
  case accessTokenRequired

  /**
   Indicates that the URLResponse was an invalid type. Typically this is because
   an HTTPURLResponse was expected but a vanilla URLResponse was received
   */
  case invalidURLResponseType

  /// Indicates that no data was returned
  case missingData

  /// Indicates that a URLResponse was missing from the URLSessionDataTask completion
  case missingURLResponse

  /**
   Indicates an endpoint that returns a binary response was used with GraphRequestConnection.

   Endpoints that return image/jpg, etc. should be accessed using URLRequest
   */
  case nonTextMimeType

  /**
   Indicates that a request was added to a connection that was in a state
   that is incompatible with adding requests
   */
  case requestAddition
}