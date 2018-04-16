import React from 'react'
import PropTypes from 'prop-types'
import { requireNativeComponent, NativeModules } from 'react-native'

const {
  ScaleToFill,
  ScaleAspectFit,
  ScaleAspectFill
} = NativeModules.RNFLAnimatedImageManager;

const MODES = {
  stretch: ScaleToFill,
  contain: ScaleAspectFit,
  cover: ScaleAspectFill
}

const RNFLAnimatedImage = requireNativeComponent('RNFLAnimatedImage', FLAnimatedImage)

const FLAnimatedImage = (props) => {
  const contentMode = MODES[props.resizeMode] || MODES.stretch;

  return (
    <RNFLAnimatedImage
      {...props}
      contentMode={contentMode}
    />
  );
}


export default FLAnimatedImage
