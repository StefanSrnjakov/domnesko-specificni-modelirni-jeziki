import React from "react";
import ReactMarkdown from "react-markdown";
import { Typography, Link, Box, List, ListItem } from "@mui/material";

// Custom renderer to map Markdown elements to MUI components
const components = {
  h1: ({ children }: any) => <Typography variant="h3" color="primary" gutterBottom>{children}</Typography>,
  h2: ({ children }: any) => <Typography variant="h4" color="primary" align="center">{children}</Typography>,
  h3: ({ children }: any) => <Typography variant="h5" color="primary" align="center">{children}</Typography>,
  p: ({ children }: any) => <Typography variant="h6" color="text.secondary" paragraph>{children}</Typography>,
  a: ({ href, children }: any) => <Link href={href} target="_blank" rel="noopener">{children}</Link>,
  ul: ({ children }: any) => (
    <List
      sx={{
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
        justifyContent: "center",
        padding: 0,
      }}
    >
      {children}
    </List>
  ),
  ol: ({ children }: any) => (
    <List
      sx={{
        listStyleType: "decimal", // Ensures ordered list numbering
        listStylePosition: "inside", // Moves numbers inside the list item
        padding: 0,
        textAlign: "center", // Centers the content
        display: "flex",
        flexDirection: "column",
        alignItems: "center",
      }}
    >
      {children}
    </List>
  ),
  li: ({ children }: any) => (
    <ListItem
      sx={{
        display: "list-item", // Maintain list item display
        textAlign: "center",
        width: "100%", // Ensures full width for proper alignment
      }}
    >
      {children}
    </ListItem>
  ),
  code: ({ children }: any) => (
    <Box component="code" sx={{ bgcolor: "#f5f5f5", p: 1, borderRadius: 1, display: "block" }}>
      {children}
    </Box>
  ),
};

// MarkdownRenderer Component
const MarkdownRenderer: React.FC<{ markdown: string }> = ({ markdown }: { markdown: string }) => {
  return <ReactMarkdown components={components}>{markdown}</ReactMarkdown>;
};

export default MarkdownRenderer;
