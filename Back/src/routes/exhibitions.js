import {Router} from 'express';
import {getExhibition, getExhibitionById, getLocationByUser} from '../controllers/exhibitions'

const router = Router();

router.get('/exhibitions', getExhibition);
router.get('/exhibition/:id', getExhibitionById);
router.get('/location/:id', getLocationByUser);


export default router;