import { Router } from 'express';
import { auth } from '../middleware/auth';
import { createItem, deleteItem, getItem, listItems, updateItem } from '../controllers/itemControllers';

const router = Router();

router.get('/items', auth, listItems );
router.get('/items/:_id', auth, getItem);
router.post('/items', auth, createItem);
router.put('/items/:_id', auth, updateItem);
router.delete('/items/:_id', auth, deleteItem);

export default router;
