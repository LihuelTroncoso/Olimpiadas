import {connect} from '../db';

export const getExhibition = async (req, res) =>{
    const connection = await connect();
    const rows = await connection.execute("SELECT * FROM exhibitions");
    res.json(rows[0][0]);
} 

export const getExhibitionById = async (req, res) =>{
    const connection = await connect();
    console.log(req.params.id);
    const rows = await connection.execute("SELECT * FROM exhibitions where idExhibitions = ?", [
        req.params.id,
    ]);
    res.json(rows[0][0]);
}