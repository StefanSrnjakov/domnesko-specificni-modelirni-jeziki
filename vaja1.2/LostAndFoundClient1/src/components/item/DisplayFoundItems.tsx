import React from 'react';
import {
    Grid,
    Box,
    CircularProgress,
    Table,
    TableBody,
    TableCell,
    TableContainer,
    TableHead,
    TableRow,
    Paper,
    Pagination,
    Alert,
} from '@mui/material';
import { Item } from '../../models/Item';
import FoundItemCard from './ItemCard';
import FoundItemTableRow from './FoundItemTableRow';
import FoundItemListItem from './ItemListItem';
interface DisplayFoundItemsProps {
    items: Item[];
    loading: boolean;
    displayType: 'grid' | 'table' | 'list';
    page: number;
    totalPages: number;
    onPageChange: (event: React.ChangeEvent<unknown>, value: number) => void;
}

const DisplayFoundItems: React.FC<DisplayFoundItemsProps> = ({
    items,
    loading,
    displayType,
    page,
    totalPages,
    onPageChange,
}) => {
    if (loading) {
        return (
            <Box display="flex" justifyContent="center" alignItems="center" sx={{ mt: 4 }}>
                <CircularProgress />
            </Box>
        );
    }

    return (
        <>
            {displayType === 'grid' && (
                <Grid container spacing={4}>
                    {items.map((item) => (
                        <Grid item xs={12} sm={6} md={4} key={item._id}>
                            <FoundItemCard item={item} />
                        </Grid>
                    ))}
                </Grid>
            )}

            {displayType === 'table' && (
                <TableContainer component={Paper} sx={{ mb: 4 }}>
                    <Table>
                        <TableHead>
                            <TableRow>
                                <TableCell>Name</TableCell>
                                <TableCell>Category</TableCell>
                                <TableCell>Description</TableCell>
                                <TableCell>Location</TableCell>
                                <TableCell>Actions</TableCell>
                            </TableRow>
                        </TableHead>
                        <TableBody>
                            {items.map((item) => (
                                <FoundItemTableRow key={item._id} item={item} />
                            ))}
                        </TableBody>
                    </Table>
                </TableContainer>
            )}

            {displayType === 'list' && (
                <>
                    {items.length > 0 ? (
                        <Box sx={{ width: '100%' }}>
                            {items.map((item) => (
                                <FoundItemListItem key={item._id} item={item} />
                            ))}
                        </Box>
                    ) : (
                        <Alert severity="info" sx={{ mt: 4 }}>
                            No items found. Try adjusting the filters or check back later for new listings.
                        </Alert>
                    )}
                </>
            )}

            {/* Pagination Control */}
            <Box display="flex" justifyContent="center" mt={6}>
                <Pagination count={totalPages} page={page} onChange={onPageChange} color="primary" />
            </Box>
        </>
    );
};

export default DisplayFoundItems;
