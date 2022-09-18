import { View, StyleSheet, Button } from 'react-native'
import React, { useEffect, useState } from 'react'
import { getExhibitionByLocation, getLocationByUser } from '../Api.js'
import * as Tts from 'expo-speech';


const HomeScreen = ({ navigation }) => {
  const Styles = StyleSheet.create({
    button: {
      margin: 10
    }
  })

  const [Exhibition, setExhibition] = useState([])
  const [text, setText] = useState('Lorem ipsum')
  const [location, setLocation] = useState(0)

  const speak = () => {
    console.log(text)
    Tts.speak(text)
  }

  const stopSpeak = () => {
    Tts.stop()
  }

  //Obtengo la nueva localizacion del usuario
  const getLocation = async () => {
    const data = await getLocationByUser(1)
    setLocation(data.location)
    getExhibition(location)
    console.log(Exhibition)
  }

  //Obtengo la exposicion segun la localizacion del usuario
  const getExhibition = async (id) => {
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
    <View style={{ flex: 1, backgroundColor: "#272727", justifyContent: 'center' }}>
      <View>
        <Button title="Presione para escuchar una descripcion de esta obra" onPress={speak} />
        <Button title="Presione para dejar de escuchar" onPress={stopSpeak} />
      </View>
      <View>
        <Button title="Simular cambio de ubicacion" onPress={getLocation} />
        <Button title={'¡Juegos!'} onPress={() => navigation.navigate('GamesScreen')} />
      </View>
    </View>
  )
}

export default HomeScreen