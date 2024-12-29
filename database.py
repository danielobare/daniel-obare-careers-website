from sqlalchemy import create_engine
import os

# db_connection_string = os.environ['DB_CONNECTION_STRING']
db_connection_string = 'mysql+pymysql://careersadmin:Cont0546.obare_41@careers-mysql-flexible.mysql.database.azure.com:3306/danielobarecareers?connect_timeout=30'

engine = create_engine(db_connection_string,
                       connect_args={"ssl": {
                           "ssl_ca": "certs/DigiCertGlobalRootCA.crt.pem"
                       }})

# nothing