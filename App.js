import React from 'react';
import {View, Button, StyleSheet} from 'react-native';

const App = () => {
  return (
    <View style={styles.container}>
      <Button
        title="Login"
        onPress={() => alert('Login pressed')}
      />
      <Button
        title="Hello"
        onPress={() => alert('Hello pressed')}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    padding: 20,
    gap: 10,
  },
});

export default App; 