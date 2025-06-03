/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { useState } from 'react';
import {
  AppRegistry,
  SafeAreaView,
  StyleSheet,
  Text,
  View,
  TouchableOpacity,
} from 'react-native';

const App = () => {
  const [greeting, setGreeting] = useState();

  const renderAfterButton = () => {
    return (
      <SafeAreaView style={styles.container}>
        <View style={styles.contentContainer}>
          <Text style={styles.text}>
            {greeting}!!!
          </Text>
        </View>
      </SafeAreaView>
    );
  };

  if (greeting) return renderAfterButton();

  return (
    <SafeAreaView style={styles.container}>
      <View testID='welcome' style={styles.contentContainer}>
        <Text style={styles.welcomeText}>
          Welcome
        </Text>
        <TouchableOpacity 
          testID='hello_button' 
          onPress={() => setGreeting('Hello')}
          style={styles.button}
        >
          <Text style={styles.buttonText}>Hello</Text>
        </TouchableOpacity>
        <TouchableOpacity 
          testID='world_button' 
          onPress={() => setGreeting('World')}
          style={styles.button}
        >
          <Text style={styles.buttonText}>World</Text>
        </TouchableOpacity>
        <TouchableOpacity 
          testID='goodbye_button' 
          onPress={() => setGreeting('Goodbye, World')}
          style={[styles.button, styles.goodbyeButton]}
        >
          <Text style={styles.buttonText}>Goodbye</Text>
        </TouchableOpacity>
      </View>
    </SafeAreaView>
    );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
  contentContainer: {
    flex: 1,
    paddingTop: 20,
    justifyContent: 'center',
    alignItems: 'center',
  },
  welcomeText: {
    fontSize: 25,
    marginBottom: 30,
    fontWeight: '600',
  },
  text: {
    fontSize: 25,
    fontWeight: '600',
  },
  button: {
    padding: 12,
    marginBottom: 20,
    borderRadius: 8,
    backgroundColor: '#e3e3e3',
    minWidth: 120,
    alignItems: 'center',
  },
  goodbyeButton: {
    marginTop: 30,
  },
  buttonText: {
    color: '#007AFF',
    fontSize: 16,
    fontWeight: '500',
  },
});

AppRegistry.registerComponent('example', () => App);
