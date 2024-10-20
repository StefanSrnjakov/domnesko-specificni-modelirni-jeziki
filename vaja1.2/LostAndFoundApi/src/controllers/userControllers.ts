import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';

import { Request, Response } from 'express';
import { User } from '../models/User';

const JWT_SECRET = process.env.JWT_SECRET || 'secret';

export const createUser = async (req: Request, res: Response) => {
  try {
    const { name, email, password } = req.body;
    const user = new User({
      name, email,
      passwordHash: await bcrypt.hash(password, 10)
    });
    await user.save();
    res.status(201).json(user);
  } catch (error) {
    res.status(400).json({ error: 'Failed to create user' });
  }
};

export const getUser = async (req: Request, res: Response) => {
  try {
    const { _id, email } = req.body;
    console.log(_id, email);
    const users = await User.find({ _id, email });
    res.status(200).json(users);
  } catch (error) {
    res.status(500).json({ error: 'Failed to fetch users' });
  }
};

export const login = async (req: Request, res: Response) => {
  const { email, password } = req.body
  const user = await User.findOne({ email });

  if (user === null || !(await bcrypt.compare(password, user.passwordHash))) {
    res.status(401).json({ error: 'Invalid email or password' });
    return;
  }

  const token = jwt.sign({ _id: user._id, email: user.email }, JWT_SECRET, {
    expiresIn: '24h',
  });

  res.status(200).json({ token, _id: user._id, name: user.name, email: user.email });
};