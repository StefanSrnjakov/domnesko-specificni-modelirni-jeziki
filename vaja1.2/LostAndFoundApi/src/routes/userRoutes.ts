import { Router } from 'express';
import { createUser, getUser, login } from '../controllers/userControllers';
import { auth } from '../middleware/auth';

const router = Router();

router.post('/users', createUser);
router.get('/users', auth, getUser);

router.post('/users/login', login );
router.post('/users/logout', (req, res) => {
    res.send('Logout');
    }
);

export default router;
