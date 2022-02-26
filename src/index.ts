import { world } from '@/aliase';
import dotenv from 'dotenv'; // dotenv support, uninstall if you do not need
import 'reflect-metadata'; // reflect metadata support, uninstall if you do not need

dotenv.config();

export const hello = `${process.env.HELLO} ${world}`;

console.log(hello);

export type { World } from '@/aliase';
