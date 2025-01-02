import { createTheme } from '@mui/material/styles';
import appConfig from '../appConfig';

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

const theme = createTheme({
  palette: {
    mode: appConfig.theme.mode as 'light' | 'dark',
    primary: { main: appConfig.theme.primaryColor },
    secondary: { main: appConfig.theme.secondaryColor },
    error: { main: appConfig.theme.errorBtnColor },
    warning: { main: appConfig.theme.warningBtnColor },
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
