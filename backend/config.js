require("dotenv").config();

const SECRET_KEY = process.env.NODE_ENV || 'capstone2';
const PORT = +process.env.PORT || 3001;
const BCRYPT_WORK_FACTOR = process.env.NODE_ENV === 'test' ? 1 : 12;

const getDatabaseURI = () => {
    return (process.env.NODE_ENV === 'test')
        ? 'capstone2_test' 
        : process.env.DATABASE_URL || capstone2
};

module.exports = {
    SECRET_KEY,
    PORT,
    BCRYPT_WORK_FACTOR,
    getDatabaseURI
};