import { User } from "./Profile";

export interface LoginResponse {
    token: string;
    user: User;
}