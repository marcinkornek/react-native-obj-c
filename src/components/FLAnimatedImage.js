import React from 'react'
import PropTypes from 'prop-types'
import { requireNativeComponent } from 'react-native'

const RNFLAnimatedImage = requireNativeComponent('RNFLAnimatedImage', FLAnimatedImage)

const FLAnimatedImage = (props) => {
  return (
    <RNFLAnimatedImage
      {...props}
    />
  );
}


export default FLAnimatedImage
