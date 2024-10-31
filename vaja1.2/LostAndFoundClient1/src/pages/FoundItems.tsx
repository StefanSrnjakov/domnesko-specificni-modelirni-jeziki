import React, { useEffect, useState } from 'react';
import { Box, Card, CardContent, CardMedia, Typography, Grid, CircularProgress, Button, Chip, CardActions, Container } from '@mui/material';
import { itemService } from '../services/itemService';
import { Item } from '../models/Item';

const FoundItems: React.FC = () => {
    const [items, setItems] = useState<Item[]>([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const getItems = async () => {
            try {
                const allItems = await itemService.fetchItems();
                const foundItems = allItems.filter((item: Item) => item.type === 'found');
                setItems(foundItems);
            } catch (error) {
                console.error("Error fetching items:", error);
            } finally {
                setLoading(false);
            }
        };

        getItems();
    }, []);

    return (
        <Container maxWidth="lg" sx={{ mt: 8, py: 4, boxShadow: 3, borderRadius: 2, bgcolor: 'background.paper' }}>
            <Typography variant="h4" align="center" gutterBottom>
                Found Items
            </Typography>

            {loading ? (
                <Box display="flex" justifyContent="center" alignItems="center" sx={{ mt: 4 }}>
                    <CircularProgress />
                </Box>
            ) : (
                <Grid container spacing={4}>
                    {items.map((item) => (
                        <Grid item xs={12} sm={6} md={4} key={item._id}>
                            <Card sx={{ maxWidth: 345, boxShadow: '0px 8px 16px rgba(0,0,0,0.15)', borderRadius: 3 }}>
                                <CardMedia
                                    component="img"
                                    height="180"
                                    image="https://via.placeholder.com/300" // Larger placeholder image
                                    alt={item.name}
                                    sx={{ borderTopLeftRadius: 12, borderTopRightRadius: 12 }}
                                />
                                <CardContent>
                                    <Typography variant="h6" component="div" color="primary">
                                        {item.name}
                                    </Typography>
                                    <Chip label={item.category} color="secondary" size="small" sx={{ mt: 1, mb: 1 }} />
                                    <Typography variant="body2" color="text.secondary" paragraph>
                                        {item.description}
                                    </Typography>
                                    <Typography variant="body2" color="text.secondary">
                                        <strong>Location:</strong> {item.locationFound}
                                    </Typography>
                                    {item.dateFound && (
                                        <Typography variant="body2" color="text.secondary">
                                            <strong>Date Found:</strong> {new Date(item.dateFound).toLocaleDateString()}
                                        </Typography>
                                    )}
                                </CardContent>
                                <CardActions sx={{ justifyContent: 'space-between', padding: 2 }}>
                                    {item.status === 'listed' ? (
                                        <Chip label="Available" color="success" variant="outlined" />
                                    ) : (
                                        <Chip label="Claimed" color="default" variant="outlined" />
                                    )}
                                    {item.email || item.number ? (
                                        <Button
                                            variant="contained"
                                            color="primary"
                                            size="small"
                                            onClick={() => window.location.href = item.email ? `mailto:${item.email}` : `tel:${item.number}`}
                                        >
                                            Contact
                                        </Button>
                                    ) : null}
                                </CardActions>
                            </Card>
                        </Grid>
                    ))}
                </Grid>
            )}
        </Container>
    );
};

export default FoundItems;
