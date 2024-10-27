// src/components/layout/NavBar.tsx
import React, { useState } from 'react';
import AppBar from '@mui/material/AppBar';
import Toolbar from '@mui/material/Toolbar';
import Button from '@mui/material/Button';
import Box from '@mui/material/Box';
import HomeIcon from '@mui/icons-material/Home';
import InfoIcon from '@mui/icons-material/Info';
import AccountCircleIcon from '@mui/icons-material/AccountCircle';
import LoginIcon from '@mui/icons-material/Login';
import LogoutIcon from '@mui/icons-material/Logout';
import Brightness4Icon from '@mui/icons-material/Brightness4';
import Brightness7Icon from '@mui/icons-material/Brightness7';
import IconButton from '@mui/material/IconButton';
import { Link } from 'react-router-dom';
import { useAuthContext } from '../../context/AuthContext';

interface NavbarProps {
  toggleTheme: () => void;
  mode: 'light' | 'dark';
}

const Navbar: React.FC<NavbarProps> = ({ toggleTheme, mode }) => {
  const { user, logout } = useAuthContext();
  const logoSrc = 'Logo.webp';

  return (
    <AppBar position="static">
      <Toolbar sx={{ display: 'flex', justifyContent: 'space-between' }}>
        <Box display="flex" alignItems="center">
          <Box
            component="img"
            src={logoSrc}
            alt="Lost and Found concept"
            sx={{
              width: '120px',
              height: 'auto',
              transition: 'opacity 0.5s ease-in-out',
            }}
          />
        </Box>

        <Box display="flex" alignItems="center" gap={2}>
          <Button color="inherit" component={Link} to="/" startIcon={<HomeIcon />}>
            Home
          </Button>
          <Button color="inherit" component={Link} to="/about" startIcon={<InfoIcon />}>
            About
          </Button>

          {user ? (
            <>
              <Button color="inherit" component={Link} to="/profile" startIcon={<AccountCircleIcon />}>
                Profile
              </Button>
              <Button color="inherit" onClick={logout} startIcon={<LogoutIcon />}>
                Logout
              </Button>
            </>
          ) : (
            <>
              <Button color="inherit" component={Link} to="/login" startIcon={<LoginIcon />}>
                Login
              </Button>
              <Button color="inherit" component={Link} to="/register">
                Register
              </Button>
            </>
          )}

          {/* Theme Toggle Button */}
          <IconButton color="inherit" onClick={toggleTheme} sx={{ ml: 2 }}>
            {mode === 'dark' ? <Brightness7Icon /> : <Brightness4Icon />}
          </IconButton>
        </Box>
      </Toolbar>
    </AppBar>
  );
};

export default Navbar;
