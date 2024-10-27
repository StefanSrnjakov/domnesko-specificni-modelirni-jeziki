import React from 'react';
import { Container, Typography, Box, Grid, Button, Card, CardMedia, CardContent } from '@mui/material';
import { Link } from 'react-router-dom';

const HomePage: React.FC = () => {
  return (
    <Container sx={{ mt: 8, mb: 8 }}>
      {/* Hero Section */}
      <Box sx={{ textAlign: 'center', mb: 4 }}>
        <Typography variant="h3" color="primary" gutterBottom>
          Welcome to the Lost and Found App
        </Typography>
        <Typography variant="h6" color="text.secondary" paragraph>
          Easily report lost items or find those that have been found by others in your community.
        </Typography>
        <Button
          component={Link}
          to="/report"
          variant="contained"
          color="primary"
          size="large"
          sx={{ mt: 2 }}
        >
          Report Lost Item
        </Button>
      </Box>

      {/* Feature Section */}
      <Typography variant="h5" color="primary" align="center" gutterBottom>
        How It Works
      </Typography>
      <Grid container spacing={3} sx={{ mb: 4 }}>
        {[
          { title: 'Report Lost Items', description: 'Easily create a report for your lost item with details and location.' },
          { title: 'Find Lost Items', description: 'Browse the list of found items and filter by location or category.' },
          { title: 'Get Notified', description: 'Receive updates and alerts when a similar item is reported as found.' },
        ].map((feature, index) => (
          <Grid item xs={12} md={4} key={index}>
            <Card sx={{ height: '100%' }}>
              <CardMedia
                component="img"
                height="140"
                image={`https://via.placeholder.com/300x140?text=${feature.title}`}
                alt={feature.title}
              />
              <CardContent>
                <Typography variant="h6" color="text.primary">
                  {feature.title}
                </Typography>
                <Typography variant="body2" color="text.secondary">
                  {feature.description}
                </Typography>
              </CardContent>
            </Card>
          </Grid>
        ))}
      </Grid>

      {/* Explore More Section */}
      <Typography variant="h5" color="primary" align="center" gutterBottom>
        Featured Lost and Found Items
      </Typography>
      <Grid container spacing={3}>
        {Array.from({ length: 4 }).map((_, index) => (
          <Grid item xs={12} sm={6} md={3} key={index}>
            <Card>
              <CardMedia
                component="img"
                height="200"
                image="https://via.placeholder.com/200x200?text=Lost+Item"
                alt="Lost Item"
              />
              <CardContent>
                <Typography variant="subtitle1" color="text.primary">
                  Item Name {index + 1}
                </Typography>
                <Typography variant="body2" color="text.secondary">
                  Short description of the lost item. Reported on: 2024-10-27
                </Typography>
              </CardContent>
            </Card>
          </Grid>
        ))}
      </Grid>
    </Container>
  );
};

export default HomePage;
