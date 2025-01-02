import React, { useState } from 'react';
import { Box, Typography, Chip, Button, Divider } from '@mui/material';
import { Item } from '../../models/Item';
import PlaceIcon from '@mui/icons-material/Place';
import FocusCard from './FocusCard';
import appConfig from '../../appConfig';

const API_URL = appConfig.api.base;

interface FoundItemListItemProps {
    item: Item;
    strict?: boolean;
}

const FoundItemListItem: React.FC<FoundItemListItemProps> = ({ item, strict }) => {
    const [open, setOpen] = useState(false);

    const imageUrl = item.image ? `${API_URL}${item.image}` : `${API_URL}/uploads/placeholder.png`;

    const handleOpen = () => setOpen(true);
    const handleClose = () => setOpen(false);

    return (
        <>
            <Box
                display="flex"
                alignItems="flex-start"
                sx={{
                    mb: 2,
                    p: 2,
                    boxShadow: '0px 4px 8px rgba(0,0,0,0.1)',
                    borderRadius: 2,
                    backgroundColor: 'background.paper',
                }}
            >
                {/* Image */}
                <Box
                    component="img"
                    src={imageUrl}
                    alt={item.name}
                    sx={{
                        width: 100,
                        height: 100,
                        objectFit: 'cover',
                        borderRadius: 2,
                        mr: 2,
                    }}
                />

                {/* Item Info */}
                <Box flex={1}>
                    <Typography variant="h6" color="primary">
                        {item.name}
                    </Typography>
                    <Chip label={item.category} color="secondary" size="small" sx={{ mt: 1, mb: 1 }} />
                    <Typography variant="body2" color="text.secondary" paragraph>
                        {item.description.slice(0, 100)}...
                        {!strict && (
                            <Button onClick={handleOpen} size="small" color="primary">
                                Read More
                            </Button>
                        )}
                    </Typography>
                    <Typography variant="body2" color="text.secondary" display="flex" alignItems="center">
                        <PlaceIcon fontSize="small" sx={{ mr: 0.5 }} />
                        {item.locationFound}
                    </Typography>
                </Box>

                {/* Contact Button */}
                {!strict && (item.email || item.number) && (
                    <Button
                        variant="contained"
                        color="primary"
                        size="small"
                        onClick={() =>
                            window.location.href = item.email
                                ? `mailto:${item.email}`
                                : `tel:${item.number}`
                        }
                    >
                        Contact
                    </Button>
                )}
            </Box>

            <Divider />

            {/* FocusCard Modal */}
            <FocusCard item={item} open={open} handleClose={handleClose} />
        </>
    );
};

export default FoundItemListItem;
