// src/pages/AddItem.tsx
import React, { useState } from 'react';
import { Container, Box, Button, Stepper, Step, StepLabel, Typography, Paper, Fade } from '@mui/material';
import ItemTypeStep from '../components/addItem/ItemTypeStep';
import ItemDetailsStep from '../components/addItem/ItemDetailsStep';
import CommunicationStep from '../components/addItem/CommunicationStep';
import ItemAdded from '../components/addItem/ItemAdded';
import { itemService } from '../services/itemService';
import { ItemInput } from '../models/Item';

const steps = ['Select Type', 'Item Details', 'Contact Information', 'Submit'];

const AddItem: React.FC = () => {
    const [activeStep, setActiveStep] = useState(0);
    const [itemInput, setItemInput] = useState<ItemInput>({
        name: '',
        type: 'lost',
        description: '',
        category: '',
        dateFound: null,
        dateLost: null,
        locationFound: '',
        status: 'listed',
        email: null,
        number: null,
        image: null,
    });
    const [loading, setLoading] = useState(false);
    const [error, setError] = useState<string | null>(null);
    const [success, setSuccess] = useState(false);

    const handleNext = () => setActiveStep((prev) => prev + 1);
    const handleBack = () => setActiveStep((prev) => prev - 1);

    const handleInputChange = (field: keyof ItemInput, value: any) => {
        setItemInput((prev) => ({
            ...prev,
            [field]: value,
        }));
    };

    const handleSubmit = async () => {
        setLoading(true);
        setError(null);
        try {
            await itemService.addItem(itemInput);
            setSuccess(true);
        } catch (error: any) {
            setError(error.message || 'Submission failed. Please try again.');
        } finally {
            setLoading(false);
            setActiveStep(3); // Go to the final step to display result
        }
    };

    const handleRetry = () => {
        setError(null);
        setLoading(false);
        handleSubmit(); // Retry submission
    };

    const handleClose = () => {
        setSuccess(false);
        setError(null);
        setActiveStep(0); // Reset the process
        setItemInput({
            name: '',
            type: 'lost',
            description: '',
            category: '',
            dateFound: null,
            dateLost: null,
            locationFound: '',
            status: 'listed',
            email: null,
            number: null,
            image: null,
        });
    };

    return (
        <Container maxWidth="sm" sx={{ mt: 8, py: 4, boxShadow: 3, borderRadius: 2, bgcolor: 'background.paper' }}>
            <Typography variant="h4" align="center" gutterBottom color="primary">
                Report Lost or Found Item
            </Typography>
            <Typography variant="subtitle1" align="center" sx={{ mb: 3, color: 'text.secondary' }}>
                Help us help you find your item or report what you've found
            </Typography>

            <Stepper activeStep={activeStep} alternativeLabel sx={{ mb: 4 }}>
                {steps.map((label) => (
                    <Step key={label}>
                        <StepLabel>{label}</StepLabel>
                    </Step>
                ))}
            </Stepper>

            <Paper elevation={1} sx={{ padding: 3, borderRadius: 2, bgcolor: 'background.default', boxShadow: '0px 4px 12px rgba(0, 0, 0, 0.1)' }}>
                <Fade in={activeStep === 0} mountOnEnter unmountOnExit>
                    <div>
                        {activeStep === 0 && (
                            <ItemTypeStep 
                                onNext={handleNext}
                                onInputChange={handleInputChange}
                                itemInput={itemInput}
                            />
                        )}
                    </div>
                </Fade>
                <Fade in={activeStep === 1} mountOnEnter unmountOnExit>
                    <div>
                        {activeStep === 1 && (
                            <ItemDetailsStep
                                onNext={handleNext}
                                itemInput={itemInput}
                                onInputChange={handleInputChange}
                            />
                        )}
                    </div>
                </Fade>
                <Fade in={activeStep === 2} mountOnEnter unmountOnExit>
                    <div>
                        {activeStep === 2 && (
                            <CommunicationStep
                                onBack={handleBack}
                                onNext={handleSubmit}
                                itemInput={itemInput}
                                onInputChange={handleInputChange}
                            />
                        )}
                    </div>
                </Fade>
                <Fade in={activeStep === 3} mountOnEnter unmountOnExit>
                    <div>
                        {activeStep === 3 && (
                            <ItemAdded
                                status={loading ? 'loading' : success ? 'success' : 'error'}
                                errorMessage={error}
                                onRetry={handleRetry}
                                onClose={handleClose}
                            />
                        )}
                    </div>
                </Fade>
            </Paper>
        </Container>
    );
};

export default AddItem;
