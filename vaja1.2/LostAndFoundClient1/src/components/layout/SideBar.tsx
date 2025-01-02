import React, { useState } from 'react';
import Drawer from '@mui/material/Drawer';
import List from '@mui/material/List';
import ListItem from '@mui/material/ListItem';
import ListItemIcon from '@mui/material/ListItemIcon';
import ListItemText from '@mui/material/ListItemText';
import Box from '@mui/material/Box';
import Divider from '@mui/material/Divider';
import IconButton from '@mui/material/IconButton';
import MenuIcon from '@mui/icons-material/Menu';
import HomeIcon from '@mui/icons-material/Home';
import InfoIcon from '@mui/icons-material/Info';
import AccountCircleIcon from '@mui/icons-material/AccountCircle';
import LoginIcon from '@mui/icons-material/Login';
import LogoutIcon from '@mui/icons-material/Logout';
import InventoryIcon from '@mui/icons-material/Inventory';
import AddCircleOutlineIcon from '@mui/icons-material/AddCircleOutline';
import SearchIcon from '@mui/icons-material/Search';
import ChevronLeftIcon from '@mui/icons-material/ChevronLeft';
import { Link } from 'react-router-dom';
import { useAuthContext } from '../../context/AuthContext';
import appConfig from '../../appConfig';

interface SideBarProps {
    drawerOpen: boolean;
    setDrawerOpen: (open: boolean) => void;
}
const SideBar: React.FC<SideBarProps> = ({ drawerOpen, setDrawerOpen }) => {
    const { user, logout } = useAuthContext();
    const logoSrc = 'Logo.webp';

    const toggleDrawer = () => {
        setDrawerOpen(!drawerOpen);
    };

    const renderDrawerItems = () => (
        <Box sx={{ width: 250 }} role="presentation">
            {/* Logo Section */}
            {appConfig.layout.showHeader && (
                <Box
                    sx={{
                        display: 'flex',
                        justifyContent: 'center',
                        alignItems: 'center',
                        p: 2,
                        mb: 1,
                        borderBottom: '1px solid #ccc',
                        bgcolor: 'primary.main',
                    }}
                >
                    <Box
                        component="img"
                        src={logoSrc}
                        alt="Lost and Found concept"
                        sx={{
                            width: '120px',
                            height: 'auto',
                        }}
                    />
                </Box>)
            }

            <List>
                {/* Navigation Links */}
                <ListItem sx={{
                    color: 'inherit'
                }} component={Link} to="/">
                    <ListItemIcon>
                        <HomeIcon />
                    </ListItemIcon>
                    <ListItemText primary="Home" />
                </ListItem>
                <ListItem sx={{
                    color: 'inherit'
                }} component={Link} to="/about">
                    <ListItemIcon>
                        <InfoIcon />
                    </ListItemIcon>
                    <ListItemText primary="About" />
                </ListItem>
                <Divider />
                {user && (
                    <>
                        <ListItem sx={{
                            color: 'inherit'
                        }} component={Link} to="/my-items">
                            <ListItemIcon>
                                <InventoryIcon />
                            </ListItemIcon>
                            <ListItemText primary="My Items" />
                        </ListItem>
                        <ListItem sx={{
                            color: 'inherit'
                        }} component={Link} to="/lost-items">
                            <ListItemIcon>
                                <SearchIcon />
                            </ListItemIcon>
                            <ListItemText primary="Lost Items" />
                        </ListItem>
                        <ListItem sx={{
                            color: 'inherit'
                        }} component={Link} to="/found-items">
                            <ListItemIcon>
                                <SearchIcon />
                            </ListItemIcon>
                            <ListItemText primary="Found Items" />
                        </ListItem>
                        <ListItem sx={{
                            color: 'inherit'
                        }} component={Link} to="/add-item">
                            <ListItemIcon>
                                <AddCircleOutlineIcon />
                            </ListItemIcon>
                            <ListItemText primary="Add Item" />
                        </ListItem>
                        <Divider />
                    </>
                )}
                {/* Profile and Auth Buttons */}
                {user ? (
                    <>
                        <ListItem sx={{
                            color: 'inherit'
                        }} component={Link} to="/profile">
                            <ListItemIcon>
                                <AccountCircleIcon />
                            </ListItemIcon>
                            <ListItemText primary="Profile" />
                        </ListItem>
                        <ListItem sx={{
                            color: 'inherit'
                        }} onClick={logout}>
                            <ListItemIcon>
                                <LogoutIcon />
                            </ListItemIcon>
                            <ListItemText primary="Logout" />
                        </ListItem>

                    </>
                ) : (
                    <>
                        <ListItem sx={{
                            color: 'inherit'
                        }} component={Link} to="/login">
                            <ListItemIcon>
                                <LoginIcon />
                            </ListItemIcon>
                            <ListItemText primary="Login" />
                        </ListItem>
                        <ListItem sx={{
                            color: 'inherit'
                        }} component={Link} to="/register">
                            <ListItemText primary="Register" />
                        </ListItem>
                    </>
                )}
            </List>
        </Box>
    );

    return (
        <>
            {/* Sidebar Toggle Button */}
            <IconButton
                edge="start"
                color="inherit"
                aria-label="menu"
                onClick={toggleDrawer}
                sx={{
                    position: 'fixed',
                    top: 16,
                    left: 16,
                    zIndex: 1300,
                }}
            >
                {drawerOpen ? <ChevronLeftIcon /> : <MenuIcon />}
            </IconButton>

            {/* Sidebar */}
            <Drawer
                variant="persistent"
                anchor="left"
                open={drawerOpen}
                sx={{
                    '& .MuiDrawer-paper': {
                        width: 250,
                        boxSizing: 'border-box',
                    },
                }}
            >
                {renderDrawerItems()}
            </Drawer>
        </>
    );
};

export default SideBar;
