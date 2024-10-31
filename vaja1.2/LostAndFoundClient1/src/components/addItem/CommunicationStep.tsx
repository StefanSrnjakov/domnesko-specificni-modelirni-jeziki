// src/pages/steps/CommunicationStep.tsx
import React from 'react';
import { Box, Button, TextField, Typography } from '@mui/material';
import { ItemInput } from '../../models/Item';

interface CommunicationStepProps {
    onBack: () => void;
    onNext: () => void;
    onInputChange: (field: keyof ItemInput, value: any) => void;
    itemInput: ItemInput;
}

const CommunicationStep: React.FC<CommunicationStepProps> = ({ onBack, onNext, itemInput, onInputChange }) => {
    const isSubmitDisabled = !itemInput.email && !itemInput.number; // Ensure at least one field is filled

    return (
        <Box>
            <Typography variant="h6">Preferred Contact Information</Typography>
            <TextField
                label="Email"
                value={itemInput.email || ''}
                onChange={(e) => onInputChange('email', e.target.value)}
                fullWidth
                margin="normal"
            />
            <TextField
                label="Phone Number"
                value={itemInput.number || ''}
                onChange={(e) => onInputChange('number', e.target.value)}
                fullWidth
                margin="normal"
            />
            <Typography variant="body2" color="text.secondary" sx={{ mt: 2 }}>
                Please provide at least one contact method.
            </Typography>
            <Box display="flex" justifyContent="space-between" mt={3}>
                <Button onClick={onBack}>Back</Button>
                <Button
                    variant="contained"
                    onClick={onNext}
                    disabled={isSubmitDisabled} // Disable if both fields are empty
                >
                    Submit
                </Button>
            </Box>
        </Box>
    );
};

export default CommunicationStep;
