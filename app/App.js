import * as React from 'react';
import HomeScreen from './screens/HomeScreen'
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import GamesScreen from './screens/GamesScreen';

const Stack = createNativeStackNavigator()

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name="HomeScreen" component={HomeScreen} />
        <Stack.Screen name="GamesScreen" component={GamesScreen}/>
      </Stack.Navigator>
    </NavigationContainer>
  );
}