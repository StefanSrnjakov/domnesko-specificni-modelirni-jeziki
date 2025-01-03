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
import InventoryIcon from '@mui/icons-material/Inventory';
import AddCircleOutlineIcon from '@mui/icons-material/AddCircleOutline';
import { Link } from 'react-router-dom';
import { useAuthContext } from '../../context/AuthContext';
import Menu from '@mui/material/Menu';
import MenuItem from '@mui/material/MenuItem';
import MoreVertIcon from '@mui/icons-material/MoreVert';
import SearchIcon from '@mui/icons-material/Search';
import appConfig from '../../appConfig';


const Navbar: React.FC = () => {
  const { user, logout } = useAuthContext();
  const [itemsMenuAnchor, setItemsMenuAnchor] = useState<null | HTMLElement>(null);
  const logoSrc = 'Logo.webp';

  const handleItemsMenuOpen = (event: React.MouseEvent<HTMLElement>) => {
    setItemsMenuAnchor(event.currentTarget);
  };

  const handleItemsMenuClose = () => {
    setItemsMenuAnchor(null);
  };

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
          {/* Primary Navigation Links */}
          <Button color="inherit" component={Link} to="/" startIcon={<HomeIcon />}>
            Home
          </Button>
          <Button color="inherit" component={Link} to={appConfig.pages.About.url} startIcon={<InfoIcon />}>
            About
          </Button>

          {/* Items Dropdown */}
          {user && (
            <>
              <Button
                color="inherit"
                startIcon={<MoreVertIcon />}
                onClick={handleItemsMenuOpen}
              >
                Items
              </Button>
              <Menu
                anchorEl={itemsMenuAnchor}
                open={Boolean(itemsMenuAnchor)}
                onClose={handleItemsMenuClose}
                keepMounted
              >
                <MenuItem onClick={handleItemsMenuClose} component={Link} to="/my-items">
                  <InventoryIcon fontSize="small" sx={{ mr: 1 }} />
                  My Items
                </MenuItem>
                <MenuItem onClick={handleItemsMenuClose} component={Link} to={appConfig.pages.LostItems.url}>
                  <SearchIcon fontSize="small" sx={{ mr: 1 }} />
                  Lost Items
                </MenuItem>
                <MenuItem onClick={handleItemsMenuClose} component={Link} to={appConfig.pages.FoundItems.url}>
                  <SearchIcon fontSize="small" sx={{ mr: 1 }} />
                  Found Items
                </MenuItem>
                <MenuItem onClick={handleItemsMenuClose} component={Link} to={appConfig.pages.ReportItem.url}>
                  <AddCircleOutlineIcon fontSize="small" sx={{ mr: 1 }} />
                  Add Item
                </MenuItem>
              </Menu>
            </>
          )}

          {/* Profile and Auth Buttons */}
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

        </Box>
      </Toolbar>
    </AppBar>
  );
};

export default Navbar;
