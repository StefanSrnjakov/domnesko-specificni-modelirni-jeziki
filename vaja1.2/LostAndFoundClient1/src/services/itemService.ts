// src/services/authService.ts
import axios from 'axios'; // You can replace axios with fetch if you prefer
import { tokenUtils } from '../utils/tokenUtils'; // Assuming you have token utilities
import { User } from '../models/Profile';
import { LoginResponse, RegisterResponse } from '../types/apiResponses';

// Define the base URL of your API (e.g., from environment variables)
const API_URL = process.env.REACT_APP_API_URL || 'http://localhost:3001/api';

export const itemService = {
    addItem: async (itemData: any): Promise<any> => {
        try {
            const token = tokenUtils.getToken();
            const response = await axios.post(`${API_URL}/items`, itemData, {
                headers: {
                    Authorization: `${token}`,
                },
            });
            return response.data;
        } catch (error: any) {
            console.error('Add item error:', error);
            throw new Error('Failed to add item. Please try again.');
        }
    },
    fetchItems: async (): Promise<any> => {
        try {
            const response = await axios.get(`${API_URL}/items`);
            return response.data;
        } catch (error: any) {
            console.error('Fetch items error:', error);
            throw new Error('Failed to fetch items.');
        }
    },
    fetchItemById: async (itemId: string): Promise<any> => {
        try {
            const response = await axios.get(`${API_URL}/items/${itemId}`);
            return response.data;
        } catch (error: any) {
            console.error('Fetch item error:', error);
            throw new Error('Failed to fetch item.');
        }
    },
    deleteItem: async (itemId: string): Promise<void> => {
        try {
            const token = tokenUtils.getToken();
            await axios.delete(`${API_URL}/items/${itemId}`, {
                headers: {
                    Authorization: `${token}`,
                },
            });
        } catch (error: any) {
            console.error('Delete item error:', error);
            throw new Error('Failed to delete item.');
        }
    },
    updateItem: async (itemId: string, itemData: any): Promise<any> => {
        try {
            const token = tokenUtils.getToken();
            const response = await axios.put(`${API_URL}/items/${itemId}`, itemData, {
                headers: {
                    Authorization: `${token}`,
                },
            });
            return response.data;
        } catch (error: any) {
            console.error('Update item error:', error);
            throw new Error('Failed to update item.');
        }
    },
};