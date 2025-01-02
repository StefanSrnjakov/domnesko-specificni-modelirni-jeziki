// src/services/authService.ts
import axios from 'axios'; // You can replace axios with fetch if you prefer
import { tokenUtils } from '../utils/tokenUtils'; // Assuming you have token utilities
import { User } from '../models/Profile';
import { LoginResponse, RegisterResponse } from '../types/apiResponses';
import appConfig from '../appConfig';

const API_URL = `${appConfig.api.base}/api`;


export const authService = {
  login: async (email: string, password: string): Promise<LoginResponse> => {
    try {
      const response = await axios.post(`${API_URL}/${appConfig.api.endpoints.post.login}`, {
        email,
        password,
      });
      return response.data;
    } catch (error: any) {
      console.error('Login error:', error);
      throw new Error('Failed to login. Please check your credentials.');
    }
  },

  register: async (userData: User): Promise<RegisterResponse> => {
    try {
      const response = await axios.post(`${API_URL}/${appConfig.api.endpoints.post.register}`, userData);
      return response.data;
    } catch (error: any) {
      console.error('Registration error:', error);
      throw new Error('Failed to register. Please try again.');
    }
  },
  fetchUserProfile: async (): Promise<User> => {
    try {
      const token = tokenUtils.getToken();
      const response = await axios.get(`${API_URL}/users`, {
        headers: {
          Authorization: `${token}`,
        },
      });

      console.log(response.data[0]);

      return response.data[0];
    } catch (error: any) {
      console.error('Fetch user profile error:', error);
      throw new Error('Failed to fetch user profile.');
    }
  },
  deleteAccount: async (): Promise<void> => {
    try {
      const token = tokenUtils.getToken();
      await axios.delete(`${API_URL}/users`, {
        headers: {
          Authorization: `${token}`,
        },
      });
    }
    catch (error: any) {
      console.error('Delete account error:', error);
      throw new Error('Failed to delete account.');
    }
  },
  logout: () => {
    tokenUtils.removeToken();
  },
  updateUserProfile: async (user: User): Promise<void> => {
    try {
      const token = tokenUtils.getToken();
      await axios.put(`${API_URL}/users`, user, {
        headers: {
          Authorization: `${token}`,
        },
      });
    } catch (error: any) {
      console.error('Update user profile error:', error);
      throw new Error('Failed to update user profile.');
    }
  }
};
