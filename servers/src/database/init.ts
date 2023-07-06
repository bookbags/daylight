import mysql from "mysql2";

const connection = mysql.createConnection({
    host:"localhost",
    database:"daylight",
    user:"root",
    password:"bookbag"
});

connection.query(
`create table if not exists User(
    name varchar(20) primary key,
    age int not null,
    avatar varchar(100) not null,
    password varchar(100) not null
)`, function(err, result){
    console.log(result);
    console.log(`err is ${err}`);
});

connection.query(
    `create table if not exists Friend(
        name varchar(20) not null,
        friendName varchar(20) not null,
        primary key(name, friendName)
    )`, function(err, result){
        console.log(result);
        console.log(`err is ${err}`);
    });

export default connection;