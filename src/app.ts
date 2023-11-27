import express, {Response, Request,NextFunction} from 'express';
import cors from 'cors'


import mysql from 'mysql';

export const conDB = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : 'root',
    database : 'up_doi'
  });
   
    

const app = express();

app.use(express.json());
app.use(express.text()); // this is for plan/text format
app.use(express.urlencoded({extended: true})); //Parse URL-encoded bodies 
//app.use(express.urlencoded({}))
app.use(cors());



app.get('/getCount', (req, res) => {
    const authHeader = req.headers["authorization"];
    const token = authHeader;
    if (token == null) return res.sendStatus(401);
    if(token == "b809vCwvtawRbsG0BmP1tWgnlXQypSKf"){
        
    }else{
        return res.sendStatus(401);
    } 
    //conDB.connect();
    let fetchData = conDB.query('select * from count_come', (error, results, fields) => {
        if(error){
            console.log(error);
        }
        res.send(results);
    })

    //conDB.end();
})

app.get('/user', (req, res) => {
    let useR = {
        name: 'Jonh',
        last: 'handsome',
        sex: 'forever',
        come: 'piw piw',
        count: 9999,
        sequan: 100
    }
    
    res.send(useR);
})

app.get('/addCount', (req, res) => {
    const authHeader = req.headers["authorization"];
    const token = authHeader;
    if (token == null) return res.sendStatus(401);
    if(token == "b809vCwvtawRbsG0BmP1tWgnlXQypSKf"){
        
    }else{
        return res.sendStatus(401);
    } 
    //conDB.connect();
	
    let fetchData = conDB.query(`insert into count_come (status, create_date) VALUES (0, NOW())`, (error, results, fields) => {
        if(error){
            console.log(error);
        }
        res.send(results);
    })

    //conDB.end();
})

 
 app.get('/report', (req, res) => {
	const authHeader = req.headers["authorization"];
    const token = authHeader;
    if (token == null) return res.sendStatus(401);
    if(token == "b809vCwvtawRbsG0BmP1tWgnlXQypSKf"){
        
    }else{
        return res.sendStatus(401);
    } 
    let fetchData = conDB.query(`SELECT COUNT(id) AS ca, 
    (select count(id) from info_s where std_id LIKE '66%' ) AS first_year,
    (select count(id) from info_s where self_disease > 0 ) AS self_dis_1,
    (select count(id) from info_s where self_disease = 0 ) AS self_dis_0,
    (select count(id) from info_s where std_id not LIKE '66%' ) AS first_year_no,
    (select count(id) from count_come ) AS not_come,  
    (select count(id) from info_s where self_disease > 0 AND std_id LIKE '66%' ) AS first_self_dis_1,
    (select count(id) from info_s where self_disease = 0 AND std_id LIKE '66%' ) AS first_self_dis_0
     FROM info_s `, (error, results, fields) => {
        if(error){
            console.log(error);
        }
        res.send(results[0]);
    })

    //conDB.end();
})

app.get('/addCount', (req, res) => {
    //conDB.connect();
	const authHeader = req.headers["authorization"];
    const token = authHeader;
    if (token == null) return res.sendStatus(401);
    if(token == "b809vCwvtawRbsG0BmP1tWgnlXQypSKf"){
        
    }else{
        return res.sendStatus(401);
    } 

    let fetchData = conDB.query(`insert into count_come (status, create_date) VALUES (0, NOW())`, (error, results, fields) => {
        if(error){
            console.log(error);
        }
        res.send(results);
    })

    //conDB.end();
})



app.post('/addRecoard', (req, res) => {
    //conDB.connect();
    
    const authHeader = req.headers["authorization"];
    const token = authHeader;
    if (token == null) return res.sendStatus(401);
    if(token == "b809vCwvtawRbsG0BmP1tWgnlXQypSKf"){
        
    }else{
        return res.sendStatus(401);
    } 

	let qq = `
	INSERT INTO info_s (fname,lname,gov,std_id,age,tel,em_tel,lost_medic,lost_food,self_medic,
        self_disease,disease1,disease2,disease3,disease4,disease5,disease6,food) 
        VALUES (
        '${req.body.fname? req.body.fname: ''}',
        '${req.body.lname? req.body.lname: ''}',
        '${req.body.gov? req.body.gov: ''}',
        '${req.body.std_id? req.body.std_id: ''}',
        '${req.body.age? req.body.age: ''}',
        '${req.body.tel? req.body.tel: ''}',
        '${req.body.em_tel? req.body.em_tel: ''}',
        ${req.body.lost_medic? req.body.lost_medic: 0},
        ${req.body.lost_food? req.body.lost_food: 0},
        ${req.body.self_medic? req.body.self_medic: 0},
        ${req.body.self_disease? req.body.self_disease: 0},
        ${req.body.disease1? req.body.disease1: 0},
        ${req.body.disease2? req.body.disease2: 0},
        ${req.body.disease3? req.body.disease3: 0},
        ${req.body.disease4? req.body.disease4: 0},
        ${req.body.disease5? req.body.disease5: 0},
        ${req.body.disease6? req.body.disease6: 0},
        ${req.body.food? req.body.food: 0})
	`
    console.log(qq)
	
	
    let fetchData = conDB.query(qq, (error, results, fields) => {
        if(error){
            console.log(error);
        }
        res.send(results);
    })

    //conDB.end();
})

export function authenticateToken(
    req: Request,
    res: Response,
    next: NextFunction
  ) {
    const authHeader = req.headers["authorization"];
    const token = authHeader;
    if (token == null) return res.sendStatus(401);
    if(token == "b809vCwvtawRbsG0BmP1tWgnlXQypSKf"){
        next();
    }else{
        return res.sendStatus(401);
    }   
    
  }

console.log('Running with port 3333');
app.listen(3333)