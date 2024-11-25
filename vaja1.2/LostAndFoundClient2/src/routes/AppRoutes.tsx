import React from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider } from '../context/AuthContext';
import HomePage from '../pages/Home';
import Login from '../pages/Login';
import Register from '../pages/Register';
import Profile from '../pages/Profile';
import { useAuthContext } from '../context/AuthContext';
import { Box } from '@mui/material';
import SideBar from '../components/layout/SideBar';
import About from '../pages/About';
import SessionExpired from '../pages/SessionExpired';
import LostItems from '../pages/LostItems';
import FoundItems from '../pages/FoundItems';
import MyItems from '../pages/MyItems';
import AddItem from '../pages/AddItem';
import Footer from '../components/layout/Footer';

const PrivateRoute = ({ children }: { children: JSX.Element }) => {
  const { user, loading } = useAuthContext();

  if (loading) {
    return <h1>Loading...</h1>;
  }
  if (user?.exp && user.exp < Date.now() / 1000) {
    return <Navigate to="/session-expired" />;
  }
  if (!user) {
    return <Navigate to="/login" />;
  }
  return children;
};

const AppRoutes: React.FC = () => {
  const [drawerOpen, setDrawerOpen] = React.useState(false);

  return (
    <Router>
      <AuthProvider>
        <Box sx={{ display: 'flex', height: '100vh', flexDirection: 'column' }}>
          {/* Sidebar */}
          <SideBar drawerOpen={drawerOpen} setDrawerOpen={setDrawerOpen} />

          {/* Main Content */}
          <Box
            component="main"
            sx={{
              flexGrow: 1,
              ml: drawerOpen ? 30 : 0, // Adjust margin-left when the drawer is open
              transition: 'margin 0.3s ease-in-out',
              padding: 2,
              display: 'flex',
              flexDirection: 'column',
              justifyContent: 'space-between', // Push footer to the bottom
              minHeight: '100vh', // Ensure full-page height
            }}
          >
            {/* Routes */}
            <Box sx={{ flexGrow: 1 }}>
              <Routes>
                <Route path="/" element={<HomePage />} />
                <Route path="/login" element={<Login />} />
                <Route path="/register" element={<Register />} />
                <Route path="/about" element={<About />} />
                <Route path="/session-expired" element={<SessionExpired />} />
                <Route
                  path="/profile"
                  element={
                    <PrivateRoute>
                      <Profile />
                    </PrivateRoute>
                  }
                />
                <Route
                  path="/lost-items"
                  element={
                    <PrivateRoute>
                      <LostItems />
                    </PrivateRoute>
                  }
                />
                <Route
                  path="/found-items"
                  element={
                    <PrivateRoute>
                      <FoundItems />
                    </PrivateRoute>
                  }
                />
                <Route
                  path="/my-items"
                  element={
                    <PrivateRoute>
                      <MyItems />
                    </PrivateRoute>
                  }
                />
                <Route
                  path="/add-item"
                  element={
                    <PrivateRoute>
                      <AddItem />
                    </PrivateRoute>
                  }
                />
                <Route path="*" element={<h1>404 Not Found</h1>} />
              </Routes>
            </Box>
            <Footer />
          </Box>
        </Box>
      </AuthProvider>
    </Router>
  );
};

export default AppRoutes;
