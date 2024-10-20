import mongoose, { Schema, Document } from 'mongoose';

export interface IItem extends Document {
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

const ItemSchema: Schema = new Schema({
    name: { type: String, required: true },
    type: { type: String, required: true, enum: ['lost', 'found'] },
    description: { type: String, required: true },
    category: { type: String, required: true },
    dateFound: { type: Date },
    dateLost: { type: Date },
    publishedAt: { type: Date, default: Date.now },
    lastUpdatedAt: { type: Date, default: Date.now },
    locationFound: { type: String, required: true },
    status: { type: String, required: true, default: 'listed', enum: ['listed', 'claimed']},
    email: { type: String },
    number: { type: String }
});



export default mongoose.model<IItem>('Item', ItemSchema);