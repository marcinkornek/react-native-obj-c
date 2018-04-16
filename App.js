import React, { Component } from 'react';
import { StyleSheet, View } from 'react-native';
import FLAnimatedImage from './src/components/FLAnimatedImage'

export default class App extends Component {
  render() {
    return (
      <View style={styles.container}>
        <FLAnimatedImage
          style={styles.gif}
          src="https://media2.giphy.com/media/10j1sRnpiklXB6/giphy.gif"
          resizeMode='contain'
        />
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  gif: {
    width: 200,
    height: 500,
  },
});
