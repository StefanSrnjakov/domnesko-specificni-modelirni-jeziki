import React, { useEffect, useState } from 'react';
import { Container, Typography, Box, Avatar, Button, Dialog, DialogActions, DialogContent, DialogContentText, DialogTitle, CircularProgress, Divider, Grid } from '@mui/material';
import { authService } from '../services/authService';
import { User } from '../models/Profile';

const Profile: React.FC = () => {
  const [user, setUser] = useState<User | null>(null);
  const [open, setOpen] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [deleting, setDeleting] = useState(false);

  useEffect(() => {
    const fetchProfile = async () => {
      try {
        const profile = await authService.fetchUserProfile();
        setUser(profile);
      } catch (err) {
        setError('Failed to load profile data. Please try again.');
      } finally {
        setLoading(false);
      }
    };
    fetchProfile();
  }, []);

  const handleDeleteAccount = async () => {
    setDeleting(true);
    try {
      await authService.deleteAccount();
      authService.logout();
      window.location.href = '/login';
    } catch (err) {
      setError('Failed to delete account. Please try again.');
    } finally {
      setDeleting(false);
      setOpen(false);
    }
  };

  return (
    <Container maxWidth="sm" sx={{ mt: 8, py: 4, boxShadow: 3, borderRadius: 2, bgcolor: 'background.paper' }}>
      <Typography variant="h4" gutterBottom align="center" color="primary">
        Profile
      </Typography>

      {error && (
        <Typography color="error" align="center" sx={{ mb: 2 }}>
          {error}
        </Typography>
      )}

      <Box display="flex" flexDirection="column" alignItems="center" mt={4}>
        {loading ? (
          <CircularProgress color="primary" sx={{ my: 4 }} />
        ) : (
          <>
            <Avatar
              alt="Profile Image"
              src="profile.png" // Placeholder image URL
              sx={{ width: 120, height: 120, mb: 2 }}
            />

            {user ? (
              <>
                <Typography variant="h6">
                  {user.name} {user.surname}
                </Typography>
                <Typography variant="body1" color="textSecondary">
                  {user.email}
                </Typography>
                <Typography variant="body2" color="textSecondary" sx={{ mt: 1 }}>
                  Birthdate: {new Date(user.birthdate).toLocaleDateString()}
                </Typography>

                {/* Account Details Summary */}
                <Box sx={{ mt: 4, width: '100%', textAlign: 'center' }}>
                  <Typography variant="h6" gutterBottom>
                    Account Summary
                  </Typography>
                  <Typography variant="body2" color="textSecondary">
                    Member since: {new Date().toLocaleDateString()}
                  </Typography>
                  <Typography variant="body2" color="textSecondary" sx={{ mb: 2 }}>
                    Total items reported: 15
                  </Typography>
                  <Divider sx={{ my: 2 }} />
                </Box>

                {/* Quick Actions */}
                <Box display="flex" justifyContent="center" gap={2} mt={2}>
                  <Button variant="outlined" color="primary" sx={{ px: 3 }}>
                    Edit Profile
                  </Button>
                  <Button variant="outlined" color="primary" sx={{ px: 3 }}>
                    View Reports
                  </Button>
                </Box>

                

                {/* Delete Account Button */}
                <Button
                  variant="contained"
                  color="error"
                  onClick={() => setOpen(true)}
                  sx={{ mt: 4, px: 4 }}
                  disabled={deleting}
                >
                  {deleting ? <CircularProgress size={24} color="inherit" /> : 'Delete Account'}
                </Button>
              </>
            ) : (
              <Typography color="textSecondary">Profile data not available</Typography>
            )}
          </>
        )}
      </Box>

      {/* Confirmation Dialog */}
      <Dialog open={open} onClose={() => setOpen(false)} disableEscapeKeyDown>
        <DialogTitle color="error">Delete Account</DialogTitle>
        <DialogContent>
          <DialogContentText>
            Are you sure you want to permanently delete your account? This action is irreversible.
          </DialogContentText>
        </DialogContent>
        <DialogActions>
          <Button onClick={() => setOpen(false)} color="primary">
            Cancel
          </Button>
          <Button onClick={handleDeleteAccount} color="error" disabled={deleting}>
            {deleting ? <CircularProgress size={24} color="inherit" /> : 'Delete'}
          </Button>
        </DialogActions>
      </Dialog>
    </Container>
  );
};

export default Profile;
