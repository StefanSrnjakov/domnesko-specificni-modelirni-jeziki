// src/components/Footer.tsx
import React from 'react';
import AppBar from '@mui/material/AppBar';
import Toolbar from '@mui/material/Toolbar';
import MarkdownRenderer from '../helpers/MarkdownRenderer';
import { FOOTER_MARKDOWN } from '../../constants/homeMarkdown';

const Footer: React.FC = () => {
  return (
    <AppBar position="static" color="primary" sx={{ top: 'auto', bottom: 0, padding: '5px 0' }}>
      <Toolbar sx={{ display: 'flex', flexDirection: 'column', alignItems: 'center' }}>

        <MarkdownRenderer markdown={FOOTER_MARKDOWN} />
      </Toolbar>
    </AppBar>
  );
};

export default Footer;
