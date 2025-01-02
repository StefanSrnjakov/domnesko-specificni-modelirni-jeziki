// HomePage.tsx
import React from 'react';
import { Container, Typography, Box, Button } from '@mui/material';
import { Link } from 'react-router-dom';
import MarkdownRenderer from '../components/helpers/MarkdownRenderer';
import appConfig from '../appConfig';
import GridQuickLinks from '../components/quickLinkTypes/GridQuickLinks';
import ListQuickLinks from '../components/quickLinkTypes/ListQuickLinks';

const HomePage: React.FC = () => {
  const QuickLinksComponents = {
    grid: GridQuickLinks,
    list: ListQuickLinks,
  };

  const viewType = appConfig.pages.Home.quickLinks.view as 'grid' | 'list';
  const QuickLinksComponent = QuickLinksComponents[viewType];

  return (
    <Container sx={{ mt: 8, mb: 8 }}>
      {/* Hero Section */}
      <Box sx={{ textAlign: 'center', mb: 4 }}>
        <Typography variant="h3" color="primary" gutterBottom>
          {appConfig.pages.Home.title}
        </Typography>
        <MarkdownRenderer markdown={appConfig.pages.Home.content} />
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

      {QuickLinksComponent ? <QuickLinksComponent /> : null}
    </Container>
  );
};

export default HomePage;
