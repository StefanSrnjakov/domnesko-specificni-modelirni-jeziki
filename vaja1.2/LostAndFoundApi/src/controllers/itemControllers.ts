import { Request, Response } from 'express';
import Item from '../models/Item';

// Create a new item
export const createItem = async (req: Request, res: Response) => {
    try {

        const newItem = new Item(req.body);
        const savedItem = await newItem.save();
        res.status(201).json(savedItem);
    } catch (error: any) {
        console.log(error);
        res.status(400).json({ error: error.message });
    }
};

export const listItems = async (req: Request, res: Response) => {
    try {
        console.log(19);
        const items = await Item.find();
        console.log(20);
        res.status(200).json(items);
    } catch (error: any) {
        res.status(500).json({ error: error.message });
    }
};

export const getItem = async (req: Request, res: Response) => {
    try {
        const { _id } = req.params;
        const item = await Item.findById(_id);
        if (!item) {
            res.status(404).json({ error: 'Item not found' });
            return;
        }
        res.status(200).json(item);
    } catch (error: any) {
        res.status(500).json({ error: error.message });
    }
};

export const updateItem = async (req: Request, res: Response) => {
    try {
        const { email } = req.body;
        const { _id } = req.params;

        req.body.lastUpdatedAt = new Date();

        const updatedItem = await Item.findOneAndUpdate({_id, email}, req.body, {
            new: true,
            runValidators: true,
        });
        if (!updatedItem) {
            res.status(404).json({ error: 'Item not found' });
            return;
        }
        res.status(200).json(updatedItem);
    } catch (error: any) {
        res.status(400).json({ error: error.message });
    }
};

export const deleteItem = async (req: Request, res: Response) => {
    try {
        const { _id } = req.params;
        const { email } = req.body;

        const item = await Item.findById({_id, email});

        if (!item) {
            res.status(404).json({ error: 'Item not found' });
            return;
        }

        if (item.email !== email) {
            res.status(403).json({ error: 'Unauthorized action' });
            return;
        }

        const deletedItem = await Item.findByIdAndDelete(_id);
        if (!deletedItem) {
            res.status(404).json({ error: 'Item not found' });
            return;
        }

        res.status(200).json({ message: 'Item deleted successfully' });
    } catch (error: any) {
        res.status(500).json({ error: error.message });
    }
};