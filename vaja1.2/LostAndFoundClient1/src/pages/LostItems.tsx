import React, { useEffect, useState } from 'react';
import { Box, Typography, Container, Collapse, IconButton, Autocomplete, TextField } from '@mui/material';
import { itemService } from '../services/itemService';
import { Item } from '../models/Item';
import { CATEGORIES, LOCATIONS } from '../constants/common';
import FilterListIcon from '@mui/icons-material/FilterList';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import ExpandLessIcon from '@mui/icons-material/ExpandLess';
import appConfig from '../appConfig';
import DisplayFoundItems from '../components/item/DisplayFoundItems';

const LostItems: React.FC = () => {
    const [items, setItems] = useState<Item[]>([]);
    const [loading, setLoading] = useState(true);
    const [locations, setLocations] = useState<string[]>([]);
    const [categories, setCategories] = useState<string[]>([]);
    const [page, setPage] = useState(1);
    const [totalPages, setTotalPages] = useState(1);
    const [filtersOpen, setFiltersOpen] = useState(false);

    const displayType = appConfig.pages.LostItems.view as 'grid' | 'table' | 'list';

    // Fetch items based on filters and pagination
    useEffect(() => {
        const getItems = async () => {
            setLoading(true);
            try {
                const { items: fetchedItems, totalPages } = await itemService.fetchLostItems({
                    locations,
                    categories,
                    page,
                });
                setItems(fetchedItems);
                setTotalPages(totalPages);
            } catch (error) {
                console.error('Error fetching items:', error);
            } finally {
                setLoading(false);
            }
        };
        getItems();
    }, [locations, categories, page]);

    return (
        <Container maxWidth="lg" sx={{ mt: 8, py: 4, boxShadow: 3, borderRadius: 2, bgcolor: 'background.paper' }}>
            <Typography variant="h4" align="center" gutterBottom>
                {appConfig.pages.LostItems.header}
            </Typography>

            {/* Descriptive Section */}
            <Typography variant="subtitle1" align="center" color="text.secondary" sx={{ mb: 4, px: 2 }}>
                {appConfig.pages.LostItems.description}
            </Typography>

            {/* Toggle Button for Filters */}
            <Box textAlign="center" mb={3}>
                <IconButton onClick={() => setFiltersOpen(!filtersOpen)} aria-label="toggle filters">
                    <FilterListIcon color="primary" />
                    {filtersOpen ? <ExpandLessIcon /> : <ExpandMoreIcon />}
                </IconButton>
                <Typography variant="h6" color="text.secondary" display="inline" sx={{ ml: 1 }}>
                    Filters
                </Typography>
            </Box>

            {/* Collapsible Filters Section */}
            <Collapse in={filtersOpen}>
                <Box display="flex" justifyContent="center" gap={2} flexWrap="wrap" mb={4}>
                    <Autocomplete
                        multiple
                        options={LOCATIONS}
                        value={locations}
                        onChange={(event, newValue) => setLocations(newValue)}
                        renderInput={(params) => (
                            <TextField {...params} label="Filter by Location" variant="outlined" />
                        )}
                        sx={{ minWidth: 200, maxWidth: 300 }}
                    />
                    <Autocomplete
                        multiple
                        options={CATEGORIES}
                        value={categories}
                        onChange={(event, newValue) => setCategories(newValue)}
                        renderInput={(params) => (
                            <TextField {...params} label="Filter by Category" variant="outlined" />
                        )}
                        sx={{ minWidth: 200, maxWidth: 300 }}
                    />
                </Box>
            </Collapse>

            {/* Use DisplayFoundItems for displaying items */}
            <DisplayFoundItems
                items={items}
                loading={loading}
                displayType={displayType}
                page={page}
                totalPages={totalPages}
                onPageChange={(event, value) => setPage(value)}
            />
        </Container>
    );
};

export default LostItems;
