// HomePage.tsx
import React, { useEffect, useState } from 'react';
import { Container, Typography, Box, Grid, Button, CardContent, CardMedia, Card, List, ListItem, ListItemText } from '@mui/material';
import { Link, useNavigate } from 'react-router-dom';
import MarkdownRenderer from '../components/helpers/MarkdownRenderer';
import { HOME_MARKDOWN } from '../constants/homeMarkdown';

const HomePage: React.FC = () => {
  const navigate = useNavigate();

  return (
    <Container sx={{ mt: 8, mb: 8 }}>
      {/* Hero Section */}
      <Box sx={{ textAlign: 'center', mb: 4 }}>
        <MarkdownRenderer markdown={HOME_MARKDOWN} />
        <Button
          component={Link}
          to="/add-item"
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
      <Box sx={{
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
      }}>

        <Grid container spacing={3} sx={{
          mb: 80,
          width: '70%',
          paddingLeft: '5%',
        }}>
          {/* First Row */}
          <Grid
            item
            xs={12}
            md={6}
            sx={{
              display: 'flex',
              justifyContent: 'center',
              alignItems: 'center',
            }}
          >
            <Card
              sx={{ height: 270, width: '100%' }}
              onClick={() => navigate('/add-item')}
            >
              <CardMedia
                component="img"
                image="lost-item-home1.png" // Replace with your image path
                alt="Report Lost Items"
                sx={{
                  height: '60%',
                }}
              />
              <CardContent>
                <Typography variant="h6" color="text.primary">
                  Report Lost Items
                </Typography>
                <Typography variant="body2" color="text.secondary">
                  Easily create a report for your lost item with details and location.
                </Typography>
              </CardContent>
            </Card>
          </Grid>
          <Grid
            item
            xs={12}
            md={5}
            sx={{
              display: 'flex',
              justifyContent: 'center',
              alignItems: 'center',
            }}
          >
            <Card
              sx={{ height: 270, width: '100%' }}
              onClick={() => navigate('/found-items')}
            >
              <CardMedia
                component="img"
                image="lost-item-home2.png"
                alt="Find Lost Items"
                sx={{
                  height: '60%',
                }}
              />
              <CardContent>
                <Typography variant="h6" color="text.primary">
                  Find Lost Items
                </Typography>
                <Typography variant="body2" color="text.secondary">
                  Check if someone reported your lost item
                </Typography>
              </CardContent>
            </Card>
          </Grid>

          {/* Second Row */}
          <Grid
            item
            xs={12}
            md={5}
            sx={{
              display: 'flex',
              justifyContent: 'center',
              alignItems: 'center',
            }}
          >
            <Card
              sx={{ height: 270, width: '100%' }}
              onClick={() => navigate('/lost-items')}
            >
              <CardMedia
                component="img"
                image="lost-item-home3.png"
                alt="Look for Found Items"
                sx={{
                  height: '60%',
                }}
              />
              <CardContent>
                <Typography variant="h6" color="text.primary">
                  Look for Lost Items
                </Typography>
                <Typography variant="body2" color="text.secondary">
                  Check if someone published the item you found
                </Typography>
              </CardContent>
            </Card>
          </Grid>
          <Grid
            item
            xs={12}
            md={6} // Second cell: 4 units width
            sx={{
              display: 'flex',
              justifyContent: 'center',
              alignItems: 'center',
            }}
          >
            <Card
              sx={{ height: 270, width: '100%' }}
              onClick={() => navigate('/add-item')}
            >
              <CardMedia
                component="img"
                image="lost-item-home4.png" // Replace with your image path
                alt="Report That You Found an Item"
                sx={{
                  height: '60%',
                }}
              />
              <CardContent>
                <Typography variant="h6" color="text.primary">
                  Report That You Found an Item
                </Typography>
                <Typography variant="body2" color="text.secondary">
                  You found something, report here
                </Typography>
              </CardContent>
            </Card>
          </Grid>
        </Grid>

      </Box>


    </Container>
  );
};

export default HomePage;
