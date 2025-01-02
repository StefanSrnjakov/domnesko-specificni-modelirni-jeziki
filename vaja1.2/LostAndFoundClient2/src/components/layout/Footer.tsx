import React from 'react';
import AppBar from '@mui/material/AppBar';
import Toolbar from '@mui/material/Toolbar';
import Typography from '@mui/material/Typography';
import Box from '@mui/material/Box';
import Link from '@mui/material/Link';
import IconButton from '@mui/material/IconButton';
import { Facebook, Twitter, Instagram, LinkedIn } from '@mui/icons-material';
import MarkdownRenderer from '../helpers/MarkdownRenderer';
import { FOOTER_MARKDOWN } from '../../constants/homeMarkdown';

const Footer: React.FC = () => {
  return (
    <AppBar position="static" color="primary" sx={{ top: 'auto', bottom: 0, padding: '5px 0' }}>
      <Toolbar sx={{ display: 'flex', flexDirection: 'column', gap: 1, alignItems: 'center' }}>

        <MarkdownRenderer markdown={FOOTER_MARKDOWN} />
      </Toolbar>
    </AppBar>
  );
};

export default Footer;
