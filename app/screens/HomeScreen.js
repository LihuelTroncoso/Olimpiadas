import { View, Text } from 'react-native'
import React, {useEffect, useState} from 'react'
import {getExhibitions} from '../Api.js'

const HomeScreen = () => {
  const [Exhibition, setExhibition] = useState([])

  const getExhibition = async () => {
    const data = await getExhibitions()
    setExhibition(data)
  }
  
  useEffect(() => {
    getExhibition()
  }, []);

  return (
    <View>
      <Text>{Exhibition.description}</Text>
    </View>
  )
}

export default HomeScreen