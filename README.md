# ARHeadsetUtil

A conglomeration of utility functions from [ARHeadsetKit](https://github.com/philipturner/ARHeadsetKit), brought to every Apple platform. These include [extensions](https://github.com/philipturner/ARHeadsetKit/blob/main/docs/extensions-to-apple-frameworks.md) to Metal, simd, and other frameworks that improve usability and make optimization easier. In addition, ARHeadsetUtil includes math utility functions that replace the `AAPLMathUtilities.m` library from Metal sample code.

## Why was ARHeadsetUtil created?

ARHeadsetKit is centered around iOS, but its utility functions aren't. In addition, ARHeadsetKit requires iOS 14, while the utility functions can work on earlier versions of iOS and on all Apple platforms. So, they were copied from ARHeadsetKit into this package.

## What projects use ARHeadsetKit/ARHeadsetUtil?

The following open-source projects:
- [AR MultiPendulum](https://github.com/philipturner/ar-multipendulum) - the first affordable AR headset experience
- [DL4S](https://github.com/palle-k/DL4S) - high-level machine learning framework and successor to Swift for TensorFlow

If your open-source project depends on ARHeadsetKit or ARHeadsetUtil, please send a pull request to add it to this list!

## Are ARHeadsetKit and ARHeadsetUtil the same?

No. ARHeadsetUtil is a stripped down version of ARHeadsetKit, omitting all the code related to AR. ARHeadsetKit does not have a Swift package dependency to ARHeadsetUtil, although the utilities from ARHeadsetUtil are the exact same as those in ARHeadsetKit.

## Why doesn't ARHeadsetKit depend on ARHeadsetUtil?

DocC documentation doesn't allow linking between separate frameworks within the Xcode documentation viewer. Although one could link to online documentation, DocC can't be hosted online yet. If this problem didn't exist, ARHeadsetKit would have a Swift package dependency to ARHeadsetUtil.
