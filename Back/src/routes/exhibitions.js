import {Router} from 'express';
import {getExhibition, getExhibitionById, getLocationByUser, getGames} from '../controllers/exhibitions'

const router = Router();

router.get('/exhibitions', getExhibition);
router.get('/exhibition/:id', getExhibitionById);
router.get('/location/:id', getLocationByUser);
router.get('/games', getGames); 


export default router;