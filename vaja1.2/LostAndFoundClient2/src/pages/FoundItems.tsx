import React, { useEffect, useState } from 'react';
import {
    Box,
    Typography,
    CircularProgress,
    Container,
    Table,
    TableBody,
    TableCell,
    TableContainer,
    TableHead,
    TableRow,
    Pagination,
    Collapse,
    IconButton,
    Paper,
} from '@mui/material';
import { itemService } from '../services/itemService';
import { Item } from '../models/Item';
import FoundItemTableRow from '../components/item/FoundItemTableRow'; // Import the custom row component
import FilterListIcon from '@mui/icons-material/FilterList';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import ExpandLessIcon from '@mui/icons-material/ExpandLess';

const FoundItems: React.FC = () => {
    const [items, setItems] = useState<Item[]>([]);
    const [loading, setLoading] = useState(true);
    const [page, setPage] = useState(1);
    const [totalPages, setTotalPages] = useState(1);
    const [filtersOpen, setFiltersOpen] = useState(false);

    useEffect(() => {
        const getItems = async () => {
            setLoading(true);
            try {
                const { items: fetchedItems, totalPages } = await itemService.fetchFoundItems({ page });
                setItems(fetchedItems);
                setTotalPages(totalPages);
            } catch (error) {
                console.error("Error fetching items:", error);
            } finally {
                setLoading(false);
            }
        };
        getItems();
    }, [page]);

    return (
        <Container maxWidth="lg" sx={{ mt: 8, py: 4, boxShadow: 3, borderRadius: 2, bgcolor: 'background.paper' }}>
            {/* Page Title */}
            <Typography variant="h4" align="center" gutterBottom>
                Found Items
            </Typography>
            <Typography variant="subtitle1" align="center" color="text.secondary" sx={{ mb: 4 }}>
                Browse through items that have been found and reported.
            </Typography>

            {/* Collapsible Filter Section */}
            <Box textAlign="center" mb={3}>
                <IconButton onClick={() => setFiltersOpen(!filtersOpen)} aria-label="toggle filters">
                    <FilterListIcon color="primary" />
                    {filtersOpen ? <ExpandLessIcon /> : <ExpandMoreIcon />}
                </IconButton>
                <Typography variant="h6" color="text.secondary" display="inline" sx={{ ml: 1 }}>
                    Filters
                </Typography>
            </Box>

            <Collapse in={filtersOpen}>
                {/* Filters can be added here */}
            </Collapse>

            {/* Items Table */}
            {loading ? (
                <Box display="flex" justifyContent="center" alignItems="center" sx={{ mt: 4 }}>
                    <CircularProgress />
                </Box>
            ) : (
                <>
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

                    {/* Pagination Control */}
                    <Box display="flex" justifyContent="center" mt={6} >
                        <Pagination
                            count={totalPages}
                            page={page}
                            onChange={(event, value) => setPage(value)}
                            color="primary"
                        />
                    </Box>
                </>
            )}
        </Container>
    );
};

export default FoundItems;
