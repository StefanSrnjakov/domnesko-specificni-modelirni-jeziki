import React, { useState } from 'react';
import { TableRow, TableCell, Button, Chip, Box } from '@mui/material';
import { Item } from '../../models/Item';
import PlaceIcon from '@mui/icons-material/Place';
import FocusCard from './FocusCard'; // Modal for item details
import appConfig from '../../appConfig';

const API_URL = appConfig.api.base;

interface FoundItemTableRowProps {
    item: Item;
}

const FoundItemTableRow: React.FC<FoundItemTableRowProps> = ({ item }) => {
    const [open, setOpen] = useState(false);

    const imageUrl = item.image ? `${API_URL}${item.image}` : `${API_URL}/uploads/placeholder.png`;

    const handleOpen = () => setOpen(true);
    const handleClose = () => setOpen(false);

    return (
        <>
            <TableRow hover>
                <TableCell>
                    <Box display="flex" alignItems="center" gap={2}>
                        <Box
                            component="img"
                            src={imageUrl}
                            alt={item.name}
                            sx={{
                                width: 50,
                                height: 50,
                                objectFit: 'cover',
                                borderRadius: 1,
                            }}
                        />
                        {item.name}
                    </Box>
                </TableCell>
                <TableCell>
                    <Chip label={item.category} color="secondary" size="small" />
                </TableCell>
                <TableCell>
                    {item.description.slice(0, 50)}...
                    <Button size="small" color="primary" onClick={handleOpen}>
                        Read More
                    </Button>
                </TableCell>
                <TableCell>
                    <PlaceIcon fontSize="small" sx={{ mr: 0.5 }} />
                    {item.locationFound}
                </TableCell>
                <TableCell>
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
                </TableCell>
            </TableRow>

            {/* Modal for Full Details */}
            <FocusCard item={item} open={open} handleClose={handleClose} />
        </>
    );
};

export default FoundItemTableRow;
