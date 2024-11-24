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
    mode: "light",
    primary: { main: "#1976D2" },
    secondary: { main: "#FF9800" },
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
          backgroundColor: "#0D47A1",
          "&:hover": {
            backgroundColor: "#0B3A8E",
          },
        },
        containedSecondary: {
          backgroundColor: "#FFC107",
          "&:hover": {
            backgroundColor: "#FFB300",
          },
        },
        containedWarning: {
          backgroundColor: "#F44336",
          "&:hover": {
            backgroundColor: "#E53935",
          },
        },
        containedError: {
          backgroundColor: "#D32F2F",
          "&:hover": {
            backgroundColor: "#C62828",
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
