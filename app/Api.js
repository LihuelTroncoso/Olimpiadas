const API = 'http://192.168.0.105:3000/'

export const getExhibitions = async (code) => {
    console.log(`${API}exhibitions`)
    const res = await fetch(`${API}exhibitions`)
    return await res.json()
}

export const getExhibitionByCode = async (code) => {
    const res = await fetch(`${API}exhibitions/${code}`);
    return await res.json();
};