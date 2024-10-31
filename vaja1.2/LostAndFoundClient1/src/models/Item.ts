export interface Item {
    _id: string;
    name: string;
    type: 'lost' | 'found';
    description: string;
    category: string;
    dateFound: Date | null;
    dateLost: Date | null;
    publishedAt: Date;
    lastUpdatedAt: Date;
    locationFound: string;
    status: 'listed' | 'claimed';
    email: string | null;
    number: string | null;
}
export interface ItemInput {
    name: string;
    type: 'lost' | 'found';
    description: string;
    category: string;
    dateFound: Date | null;
    dateLost: Date | null;
    locationFound: string;
    status: 'listed';
    email: string | null;
    number: string | null;
    image: File | null;
}