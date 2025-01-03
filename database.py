from sqlalchemy import create_engine
import os

db_connection_string = os.environ['DB_CONNECTION_STRING']

engine = create_engine(db_connection_string,
                       connect_args={"ssl": {
                           "ssl_ca": "certs/DigiCertGlobalRootCA.crt.pem"
                       }})

# nothing