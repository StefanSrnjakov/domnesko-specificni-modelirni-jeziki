import { createTheme } from '@mui/material/styles';

// Common scrollbar styles
const scrollbarStyles = {
  "&::-webkit-scrollbar": {
    width: "8px",
    height: "8px",
  },
  "&::-webkit-scrollbar-track": {
    backgroundColor: "#e0e0e0",
    borderRadius: "8px",
  },
  "&::-webkit-scrollbar-thumb": {
    backgroundColor: "#b0b0b0",
    borderRadius: "8px",
    border: "2px solid #e0e0e0",
  },
  "&::-webkit-scrollbar-thumb:hover": {
    backgroundColor: "#9e9e9e",
  },
};

// Create the fixed light theme
const theme = createTheme({
  palette: {
    mode: "dark",
    primary: { main: "#4CAF50" },
    secondary: { main: "#FFC10" },
    error: { main: "#D32F2F" },
    warning: { main: "#F44336" },
  },
  typography: {
    fontFamily: '"Roboto", "Helvetica", "Arial", sans-serif',
    h1: { fontWeight: 600 },
    h2: { fontWeight: 600 },
    h3: { fontWeight: 500 },
    h4: { fontWeight: 500 },
    h5: { fontWeight: 400 },
    h6: { fontWeight: 400 },
  },
  components: {
    MuiButton: {
      styleOverrides: {
        root: {
          textTransform: "none",
        },
        containedPrimary: {
          backgroundColor: "#388E3C",
          "&:hover": {
            backgroundColor: "#2E7D32",
          },
        },
        containedSecondary: {
          backgroundColor: "#FF9800",
          "&:hover": {
            backgroundColor: "#FB8C00",
          },
        },
        containedWarning: {
          backgroundColor: "#FF5722",
          "&:hover": {
            backgroundColor: "#F4511E",
          },
        },
        containedError: {
          backgroundColor: "#D32F2F",
          "&:hover": {
            backgroundColor: "#B71C1C",
          },
        },
      },
    },

    MuiCssBaseline: {
      styleOverrides: {
        html: scrollbarStyles,
        body: scrollbarStyles,
        "*": scrollbarStyles,
      },
    },
  },
});

export { theme };
