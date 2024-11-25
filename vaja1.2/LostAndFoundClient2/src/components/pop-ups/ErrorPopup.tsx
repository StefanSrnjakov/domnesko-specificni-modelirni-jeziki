import React from "react";
import { Box, Typography, IconButton, Button } from "@mui/material";
import CloseIcon from "@mui/icons-material/Close";

interface ErrorPopupProps {
    showHeader?: boolean;
    headerText?: string;
    bodyText?: string;
    closeIcon?: boolean;
    closeButtonSide?: "right" | "left" | "center";
    onClose: () => void;
}

const ErrorPopup: React.FC<ErrorPopupProps> = ({
    showHeader = true,
    headerText = "Error",
    bodyText = "",
    closeIcon = true,
    closeButtonSide = "left",
    onClose,
}) => {
    return (
        <Box
            sx={{
                position: "fixed",
                top: "50%",
                left: "50%",
                transform: "translate(-50%, -50%)",
                width: 400,
                borderRadius: 2,
                boxShadow: "0px 8px 24px rgba(0,0,0,0.4)",
                zIndex: 9999,
                overflow: "hidden",
            }}
        >
            {/* Header */}
            {showHeader && (
                <Box
                    sx={{
                        display: "flex",
                        justifyContent: "space-between",
                        alignItems: "center",
                        py: 1,
                        px: 2,
                        bgcolor: "primary.main",
                        color: "white",
                    }}
                >
                    <Typography variant="h6" >
                        {headerText}
                    </Typography>
                    {closeIcon && (
                        <IconButton
                            size="small"
                            sx={{
                                color: "white",
                                order: closeButtonSide === "right" ? 1 : -1,
                            }}
                            onClick={onClose}
                        >
                            <CloseIcon />
                        </IconButton>
                    )}
                </Box>
            )}

            {/* Body */}
            <Box sx={{
                p: 3, textAlign: "center", bgcolor: "background.paper",
            }}>
                <Typography
                    variant="body1"
                    sx={{
                        fontSize: "1rem",
                        mb: 2,
                        lineHeight: 1.5,
                    }}
                >
                    {bodyText}
                </Typography>

                {/* Close Button */}
                <Button
                    variant="contained"
                    color="error"
                    size="medium"
                    onClick={onClose}
                    sx={{
                        mt: 2,
                        px: 4,
                        py: 1,
                        fontWeight: "bold",
                        borderRadius: 2,
                        textTransform: "none",
                        mx: closeButtonSide === "center" ? "auto" : 0, // Center horizontally
                        mr: closeButtonSide === "left" ? "auto" : 0, // Push to the left
                        ml: closeButtonSide === "right" ? "auto" : 0, // Push to the right
                        display: "block", // Ensure the button takes full block space for alignment
                    }}
                >
                    Close
                </Button>
            </Box>
        </Box>
    );
};

export default ErrorPopup;
