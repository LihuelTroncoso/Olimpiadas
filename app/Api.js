const API = 'http://192.168.0.105:3000/'

export const getExhibitions = async (code) => {
    console.log(`${API}exhibitions`)
    const res = await fetch(`${API}exhibitions`)
    return await res.json()
}

export const getExhibitionByLocation = async (location) => {
    const res = await fetch(`${API}exhibition/${location}`);
    return await res.json();
};

export const getLocationByUser = async (id) => {
    const res = await fetch(`${API}location/${id}`);
    return await res.json();
}