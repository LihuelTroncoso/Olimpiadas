import { View, Text, Button } from 'react-native'
import React, {useEffect, useState} from 'react'
import {getExhibitions} from '../Api.js'
import * as Tts from 'expo-speech';

const HomeScreen = () => {
  const [Exhibition, setExhibition] = useState([])
  const [text, setText] = useState('')

  const speak = () =>{
    Tts.speak(text)
  }
  const getExhibition = async () => {
    const data = await getExhibitions()
    setExhibition(data)
    setText(Exhibition.description)
  }
  
  useEffect(() => {
    getExhibition()
  }, []);

  return (
    <View>
      <Button title="Press to hear some words" onPress={speak} />
    </View>
  )
}

export default HomeScreen