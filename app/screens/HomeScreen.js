import { View, Text, Button, StyleSheet } from 'react-native'
import React, {useEffect, useState} from 'react'
import {getExhibitionByLocation, getLocationByUser} from '../Api.js'
import * as Tts from 'expo-speech';

const Styles = StyleSheet.create({
  button: {
    margin: 10
  }
})

const HomeScreen = ({navigation}) => {
  const [Exhibition, setExhibition] = useState([])
  const [text, setText] = useState('')
  const [location, setLocation] = useState(0)

  const speak = () =>{
    Tts.speak(text)
  }

  const stopSpeak = () =>{
    Tts.stop()
  }

  //Obtengo la nueva localizacion del usuario
  const getLocation = async () => {
    const data = await getLocationByUser(1)
    console.log(data.location)
    if(location!=data.location){
      setLocation(data.location)
      getExhibition(location)
    }
  }

  //Obtengo la exposicion segun la localizacion del usuario
  const getExhibition = async(id) => {
    const data = await getExhibitionByLocation(id)
    setExhibition(data)
    console.log(Exhibition)
    setText(Exhibition.description)
    console.log(text)
  }
  
  useEffect(() => {
    getLocation()
  }, []);

  return (
    <View>
      <Button title="Presione para escuchar una descripcion de esta obra" onPress={speak} />
      <Button title="Presione para dejar de escuchar" onPress={stopSpeak}/>
      <Button title="Simular cambio de ubicacion" onPress={getLocation}/>
      <Button title={'¡Juegos!'} onPress={()=>navigation.navigate('GamesScreen')}/>
    </View>
  )
}

export default HomeScreen