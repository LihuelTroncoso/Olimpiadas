import {Router} from 'express';
import {getExhibition, getExhibitionById} from '../controllers/exhibitions'

const router = Router();

router.get('/exhibitions', getExhibition);
router.get('/exhibition/:id', getExhibitionById);

export default router;