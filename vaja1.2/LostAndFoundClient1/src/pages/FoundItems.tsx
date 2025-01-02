import React, { useEffect, useState } from 'react';
import { Box, Typography, CircularProgress, Container, Grid, TextField, Autocomplete, Pagination, Divider, Collapse, IconButton } from '@mui/material';
import { itemService } from '../services/itemService';
import { Item } from '../models/Item';
import FoundItemCard from '../components/item/ItemCard';
import { CATEGORIES, LOCATIONS } from '../constants/common';
import FilterListIcon from '@mui/icons-material/FilterList';
import LocationOnIcon from '@mui/icons-material/LocationOn';
import CategoryIcon from '@mui/icons-material/Category';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import ExpandLessIcon from '@mui/icons-material/ExpandLess';
import DisplayFoundItems from '../components/item/DisplayFoundItems';
import appConfig from '../appConfig';

const FoundItems: React.FC = () => {
    const [items, setItems] = useState<Item[]>([]);
    const [loading, setLoading] = useState(true);
    const [locations, setLocations] = useState<string[]>([]);
    const [categories, setCategories] = useState<string[]>([]);
    const [page, setPage] = useState(1);
    const [totalPages, setTotalPages] = useState(1);
    const [filtersOpen, setFiltersOpen] = useState(false);
    const displayType = appConfig.pages.FoundItems.view as 'grid' | 'table' | 'list';

    useEffect(() => {
        const getItems = async () => {
            setLoading(true);
            try {
                const { items: fetchedItems, totalPages } = await itemService.fetchFoundItems({
                    locations,
                    categories,
                    page,
                });
                setItems(fetchedItems);
                setTotalPages(totalPages);
            } catch (error) {
                console.error("Error fetching items:", error);
            } finally {
                setLoading(false);
            }
        };
        getItems();
    }, [locations, categories, page]);

    return (
        <Container maxWidth="lg" sx={{ mt: 8, py: 4, boxShadow: 3, borderRadius: 2, bgcolor: 'background.paper' }}>
            {/* Page Title */}
            <Typography variant="h4" align="center" gutterBottom>
                {appConfig.pages.FoundItems.header}
            </Typography>
            <Typography variant="subtitle1" align="center" color="text.secondary" sx={{ mb: 4 }}>
                {appConfig.pages.FoundItems.description}
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
                <Box display="flex" justifyContent="center" gap={2} flexWrap="wrap" mb={4}>
                    <Autocomplete
                        multiple
                        options={LOCATIONS}
                        value={locations}
                        onChange={(event, newValue) => setLocations(newValue)}
                        renderInput={(params) => (
                            <TextField
                                {...params}
                                label="Filter by Location"
                                variant="outlined"
                                InputProps={{
                                    ...params.InputProps,
                                    startAdornment: (
                                        <>
                                            <LocationOnIcon sx={{ color: 'primary.main', mr: 1 }} />
                                            {params.InputProps.startAdornment}
                                        </>
                                    ),
                                }}
                            />
                        )}
                        sx={{ minWidth: 200, maxWidth: 300 }}
                    />
                    <Autocomplete
                        multiple
                        options={CATEGORIES}
                        value={categories}
                        onChange={(event, newValue) => setCategories(newValue)}
                        renderInput={(params) => (
                            <TextField
                                {...params}
                                label="Filter by Category"
                                variant="outlined"
                                InputProps={{
                                    ...params.InputProps,
                                    startAdornment: (
                                        <>
                                            <CategoryIcon sx={{ color: 'secondary.main', mr: 1 }} />
                                            {params.InputProps.startAdornment}
                                        </>
                                    ),
                                }}
                            />
                        )}
                        sx={{ minWidth: 200, maxWidth: 300 }}
                    />
                </Box>
            </Collapse>
            {/* Display Count and Instructions */}
            {!loading && (
                <Box textAlign="center" color="text.secondary" mb={4}>
                    <Typography variant="body1">
                        Showing {items.length} items{totalPages > 1 && ` on page ${page} of ${totalPages}`}
                    </Typography>
                </Box>
            )}
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

export default FoundItems;
