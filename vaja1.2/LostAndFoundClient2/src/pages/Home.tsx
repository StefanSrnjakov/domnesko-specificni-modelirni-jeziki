import React from 'react';
import { Container, Typography, Box, Button, List, ListItem, ListItemButton, ListItemIcon, ListItemText, CardMedia } from '@mui/material';
import { Link, useNavigate } from 'react-router-dom';
import MarkdownRenderer from '../components/helpers/MarkdownRenderer';
import { HOME_MARKDOWN } from '../constants/homeMarkdown';
import ArrowForwardIcon from '@mui/icons-material/ArrowForward';

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
        Quick Links
      </Typography>
      <Box sx={{
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
      }}>
        <List sx={{ width: '100%', maxWidth: 600, bgcolor: 'background.paper', mx: 'auto', boxShadow: 3, borderRadius: 2 }}>
          {/* Quick Links List */}
          {[
            {
              title: 'Look for Lost Items',
              description: 'Check if someone published the item you found.',
              image: 'lost-item-home3.png',
              link: '/lost-items',
            },
            {
              title: 'Report That You Found an Item',
              description: 'You found something, report here.',
              image: 'lost-item-home4.png',
              link: '/add-item',
            },
          ].map((item, index) => (
            <ListItem
              key={index}
              disablePadding
              sx={{ mb: 2 }}
              onClick={() => navigate(item.link)}
            >
              <ListItemButton sx={{ display: 'flex', alignItems: 'center', gap: 2 }}>
                {/* Image */}
                <CardMedia
                  component="img"
                  image={item.image}
                  alt={item.title}
                  sx={{
                    width: 80,
                    height: 80,
                    borderRadius: 2,
                    objectFit: 'cover',
                  }}
                />
                {/* Text */}
                <Box>
                  <ListItemText
                    primary={item.title}
                    secondary={item.description}
                    primaryTypographyProps={{ variant: 'h6', color: 'primary' }}
                    secondaryTypographyProps={{ color: 'text.secondary' }}
                  />
                </Box>
                <ListItemIcon sx={{ justifyContent: 'flex-end', ml: 'auto', color: 'primary.main' }}>
                  <ArrowForwardIcon />
                </ListItemIcon>
              </ListItemButton>
            </ListItem>
          ))}
        </List>
      </Box>
    </Container>
  );
};

export default HomePage;
