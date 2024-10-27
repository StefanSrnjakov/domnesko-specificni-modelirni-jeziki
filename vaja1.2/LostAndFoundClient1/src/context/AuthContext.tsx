import React, { createContext, useState, useContext, ReactNode, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { authService } from '../services/authService';
import { tokenUtils } from '../utils/tokenUtils';
import { AuthContextType } from '../types/authContext';
import { UserAuth } from '../types/user';

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export const AuthProvider = ({ children }: { children: ReactNode }) => {
  const [user, setUser] = useState<UserAuth | null>(null);
  const [loading, setLoading] = useState<boolean>(false);
  const [error, setError] = useState<string | null>(null);
  const navigate = useNavigate();

  useEffect(() => {
    const token = tokenUtils.getToken();
    if (token) {
      const decodedUser = tokenUtils.decodeToken(token);
      setUser(decodedUser);
    }
  }, []);

  const login = async (email: string, password: string) => {
    setLoading(true);
    setError(null);
    try {
      const response = await authService.login(email, password);
      const { token } = response;
      const user = tokenUtils.decodeToken(token);

      tokenUtils.setToken(token);
      setUser(user);
      navigate('/');
    } catch (error) {
      setError('Login failed. Please check your credentials and try again.');
      console.error('Login failed:', error);
    } finally {
      setLoading(false);
    }
  };

  const logout = () => {
    setUser(null);
    tokenUtils.removeToken(); // Remove the token from storage
    navigate('/login'); // Redirect to login page after logout
  };

  const isAuthenticated = !!user; // Boolean to indicate if the user is authenticated

  return (
    <AuthContext.Provider value={{ user, isAuthenticated, login, logout, loading, error }}>
      {children}
    </AuthContext.Provider>
  );
};

// Custom hook to use the AuthContext
export const useAuthContext = (): AuthContextType => {
  const context = useContext(AuthContext);
  if (!context) throw new Error('useAuthContext must be used within an AuthProvider');
  return context;
};
