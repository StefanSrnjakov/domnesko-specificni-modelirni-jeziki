import {
    Box,
    List,
    ListItem,
    ListItemButton,
    ListItemIcon,
    ListItemText,
    CardMedia,
    Typography,
} from '@mui/material';
import React from 'react';
import { useNavigate } from 'react-router-dom';
import ArrowForwardIcon from '@mui/icons-material/ArrowForward';
import appConfig from '../../appConfig';

const ListQuickLinks: React.FC = () => {
    const navigate = useNavigate();

    // Use the quick links data from the appConfig
    const quickLinksData = Object.values(appConfig.pages.Home.quickLinks.links || {});

    return (
        <Box
            sx={{
                display: 'flex',
                justifyContent: 'center',
                alignItems: 'center',
            }}
        >
            <List
                sx={{
                    width: '100%',
                    maxWidth: 600,
                    bgcolor: 'background.paper',
                    mx: 'auto',
                    boxShadow: 3,
                    borderRadius: 2,
                }}
            >
                {quickLinksData.map((item: any, index) => (
                    <ListItem
                        key={index}
                        disablePadding
                        sx={{ mb: 2 }}
                        onClick={() => item.link && navigate(item.link)} // Handle missing link
                    >
                        <ListItemButton
                            sx={{ display: 'flex', alignItems: 'center', gap: 2 }}
                            disabled={!item.link} // Disable the button if link is missing
                        >
                            {/* Image */}
                            {item.image ? (
                                <CardMedia
                                    component="img"
                                    image={item.image}
                                    alt={item.title || 'Quick Link'}
                                    sx={{
                                        width: 80,
                                        height: 80,
                                        borderRadius: 2,
                                        objectFit: 'cover',
                                    }}
                                />
                            ) : (
                                <Box
                                    sx={{
                                        width: 80,
                                        height: 80,
                                        borderRadius: 2,
                                        backgroundColor: 'grey.300',
                                        display: 'flex',
                                        justifyContent: 'center',
                                        alignItems: 'center',
                                    }}
                                >
                                    <Typography variant="body2" color="text.secondary">
                                        No Image
                                    </Typography>
                                </Box>
                            )}
                            {/* Text */}
                            <Box>
                                <Typography variant="h6" color="primary">
                                    {item.title || 'Untitled Link'}
                                </Typography>
                                {item.description && (
                                    <Typography variant="body2" color="text.secondary">
                                        {item.description}
                                    </Typography>
                                )}
                            </Box>
                            {/* Arrow Icon */}
                            <ListItemIcon
                                sx={{
                                    justifyContent: 'flex-end',
                                    ml: 'auto',
                                    color: item.link ? 'primary.main' : 'grey.500',
                                }}
                            >
                                <ArrowForwardIcon />
                            </ListItemIcon>
                        </ListItemButton>
                    </ListItem>
                ))}
            </List>
        </Box>
    );
};

export default ListQuickLinks;
